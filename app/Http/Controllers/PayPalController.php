<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Modules\Ebook\Http\Controllers\EbookController;
use PayPalCheckoutSdk\Core\PayPalHttpClient;
use PayPalCheckoutSdk\Core\SandboxEnvironment;
use PayPalCheckoutSdk\Orders\OrdersCreateRequest;
use PayPalCheckoutSdk\Orders\OrdersCaptureRequest;
use Modules\Ebook\Entities\Ebook;
use PayPalHttp\HttpResponse;
use Modules\User\Contracts\Authentication;

class PayPalController extends Controller
{
    private $client;

    public function __construct()
    {
        $clientId = env('PAYPAL_CLIENT_ID');
       
        $clientSecret = env('PAYPAL_CLIENT_SECRET');
        $environment = new SandboxEnvironment($clientId, $clientSecret);
        $this->client = new PayPalHttpClient($environment);
    }

    public function createOrderPaypal(Request $request)
    {
        $ebookId = $request->input('ebookId');
        $ebook = Ebook::findOrFail($ebookId);
        $ebookPrice=$ebook->price;

        $requestBody = [
            "intent" => "CAPTURE",
            "purchase_units" => [
                [
                    "amount" => [
                        "currency_code" => "USD",
                        "value" => $ebookPrice
                    ]
                ]
            ]
        ];

        $orderRequest = new OrdersCreateRequest();
        $orderRequest->prefer('return=representation');
        $orderRequest->body = $requestBody;

        try {
            $response = $this->client->execute($orderRequest);
            return response()->json(['order' => $response->result]);
        } catch (HttpException $ex) {
            return response()->json(['error' => $ex->getMessage()], 500);
        }
    }

    public function captureOrderPaypal(Request $request, $orderID)
    {
        $captureRequest = new OrdersCaptureRequest($orderID);
        $captureRequest->prefer('return=representation');

        $ebookId = $request->input('ebookId');
        try {
            $response = $this->client->execute($captureRequest);

            $paymentStatus = $response->result->purchase_units[0]->payments->captures[0]->status;
       
            if ($paymentStatus === 'COMPLETED') {
                $user = auth()->user();
                EbookController::buy($ebookId, $user->id);
            }

            return response()->json(['capture' => $response->result]);
        } catch (HttpException $ex) {
            return response()->json(['error' => $ex->getMessage()], 500);
        }
    }
}
