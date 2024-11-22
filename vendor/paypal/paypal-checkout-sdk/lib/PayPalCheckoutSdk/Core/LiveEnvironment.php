<?php



namespace PayPalCheckoutSdk\Core;
/**
 * LiveEnvironment is used for requests against the live PayPal environment.
 */
class LiveEnvironment extends PayPalEnvironment
{
    private $clientId;
    private $clientSecret;

    public function __construct($clientId, $clientSecret)
    {
        $this->clientId = $clientId;
        $this->clientSecret = $clientSecret;
    }

    public function baseUrl()
    {
        return "https://api-m.paypal.com";
    }

    public function authorizationString()
    {
        return base64_encode($this->clientId . ":" . $this->clientSecret);
    }
}
