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
        $user = auth()->user();
        $ebooksInCart = Carts::where([
            'user_id' => $user->id
        ])->get();
        
        $ebooksInCart->load('ebook');
        $ebooks = $ebooksInCart->pluck('ebook');

        $totalPrice = $ebooks->sum('price');

        return view('public.cart.index', compact('ebooks', 'totalPrice'));
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
    public function store($ebookId)
    {
        $userId = auth()->user()->id;

        if($userId){
               // Check if the cart item already exists to prevent duplicates
            $cartExists = Carts::where('user_id', $userId)
            ->where('ebook_id', $ebookId)
            ->exists();

            if ($cartExists) {
                redirect()->back()->with('success', 'This item is already in the cart');
            }
           
            // Add the new cart item
            $cart = Carts::create([
                'user_id' => $userId,
                'ebook_id' => $ebookId,
            ]);
            
            return redirect()->back()->with('success', 'Item added to cart successfully!');
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
    public function destroy($ebookId)
    {
        //
        $userId = auth()->user()->id;

        if($userId){
               // Check if the cart item already exists to prevent duplicates
               $cartExists = Carts::where('id',$ebookId)
               ->exists();

            if (!$cartExists) {
                redirect()->back()->with('error', 'Cart item does not exist');
            }
           
        
           // Delete the record
            Carts::where('id',$ebookId)->delete();

            
            return redirect()->back()->with('success', 'Ebook removed from the cart successfully!');
        }
     

    }
}
