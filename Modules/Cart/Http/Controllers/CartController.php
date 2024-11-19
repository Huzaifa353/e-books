<?php

namespace Modules\Cart\Http\Controllers;

use Illuminate\Contracts\Support\Renderable;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Modules\Cart\Entities\Carts;
use Modules\User\Contracts\Authentication;
use Modules\Ebook\Entities\Ebook;

class CartController extends Controller
{
    /**
     * Display a listing of the resource.
     * @return Renderable
     */
    protected $auth;

    public function __construct(Authentication $auth)
    {
        $this->auth = $auth;
    }
    public function index()
    {
        return view('public.cart.index');
    }

    /**
     * Show the form for creating a new resource.
     * @return Renderable
     */
    public function create()
    {
        return view('cart::create');
    }

    /**
     * Store a newly created resource in storage.
     * @param Request $request
     * @return Renderable
     */
    public function countItems(Request $request)
    {
      
        $user =auth()->user()->id;

        if($user){
               // Check if the cart item already exists to prevent duplicates
            $cartExists = Carts::where('user_id', $user)
            ->count();
           
            if ($cartExists) {
                return response()->json([
                    'message' => 'Items Count Fetched',
                    'numberOfItems' => $cartExists
                    ]
                    , 200); // Conflict
            }
        }
     
    }
    public function store(Request $request)
    {
      // dd($request->ebook_id);
        // Validate the incoming request
        $request->validate([
            'user_id' => 'required|exists:users,id', // Ensure the user_id exists in the users table
            'ebook_id' => 'required|exists:ebooks,id', // Ensure the ebook_id exists in the ebooks table
        ]);
        $user =auth()->user()->id;

        if($user){
               // Check if the cart item already exists to prevent duplicates
            $cartExists = Carts::where('user_id', $user)
            ->where('ebook_id', $request->ebook_id)
            ->exists();

            if ($cartExists) {
                return response()->json(['message' => 'This item is already in the cart.'], 409); // Conflict
            }
           
            // Add the new cart item
            $cart = Carts::create([
                'user_id' => $user,
                'ebook_id' => $request->ebook_id,
            ]);
            dd($cart);
            return response()->json([
                'message' => 'Item added to the cart successfully.',
                'cart' => $cart,
            ], 200); // Created

        }
     
    }
    /**
     * Show the specified resource.
     * @param int $id
     * @return Renderable
     */
    public function show($id)
    {
        return view('cart::show');
    }

    /**
     * Show the form for editing the specified resource.
     * @param int $id
     * @return Renderable
     */
    public function edit($id)
    {
        return view('cart::edit');
    }

    /**
     * Update the specified resource in storage.
     * @param Request $request
     * @param int $id
     * @return Renderable
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     * @param int $id
     * @return Renderable
     */
    public function destroy($id)
    {
        //
    }
}
