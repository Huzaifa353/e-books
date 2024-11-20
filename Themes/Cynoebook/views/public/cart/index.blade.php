@extends('public.layout')

@section('content')
<div class="index-table" style="max-width: 800px; margin: 11px auto">
    <div class="table-responsive">
        <table class="table">
            <thead>
                <tr>
                    <h2 style="padding: 5px 21px">Cart</h2>
                </tr>
            </thead>
            <tbody>
                @if(count($ebooks))
                    @foreach($ebooks as $ebook)
                    <tr>
                        <td style="text-align: center">
                            <a href="{{route('cart.remove', $ebook->id)}}">
                                <img width="23" height="23" src="https://img.icons8.com/ios-filled/666666/23/delete-sign--v1.png" alt="filled-trash"/>
                            </a>
                        </td>
                        <td style="width: 100px">
                            <div class="image-holder">
                                @if (! $ebook->book_cover->exists)
                                    <div class="image-placeholder">
                                        <i class="fa fa-picture-o"></i>
                                    </div>
                                @else
                                    <a class="base-image-inner" href="{{ $ebook->book_cover->path }}">
                                        <img src="{{ $ebook->book_cover->path }}" alt="{{ $ebook->name }}">
                                    </a>
                                @endif
                            </div>
                        </td>
                        <td style="max-width: 400px;">
                            <a href="{{route('ebooks.show', $ebook->slug)}}">{{ clean($ebook->title) }}</a>
                        </td>
                        <td>{{$ebook->publication_year}}</td>
                        <td style="min-width: 70px; text-align: right; padding-right: 11px;">${{$ebook->price}}</td>
                    </tr>
                    @endforeach
                    <tr style="font-weight: bold">
                        <td></td>
                        <td colspan="3">Total</td>
                        <td style="min-width: 70px; text-align: right; padding-right: 11px;">${{$totalPrice}}</td>
                    </tr>
                @else
                    <h5 style="text-align: center; padding: 53px;">No Items in the Cart</h5>
                @endif
            </tbody>
        </table>
    </div>
</div>
        
@if(count($ebooks))
    <template>
        <div>
            <div id="paypal-button-container"></div>
        </div>
    </template>
@endif

<script>
  // Add the CSRF token to JavaScript
  window.Laravel = { csrfToken1: '{{ csrf_token() }}', csrfToken2: '{{ csrf_token() }}' };
</script>
<script src="https://www.paypal.com/sdk/js?client-id={{ env('PAYPAL_CLIENT_ID') }}&currency=USD&components=buttons&enable-funding=card&disable-funding=venmo,paylater"
  data-sdk-integration-source="developer-studio"></script>
<script>
  paypal.Buttons({
      style: {
          shape: "rect",
          layout: "vertical",
          color: "gold",
          label: "pay",
      },

      async createOrder() {
          try {
              const response = await fetch("/api/paypal/order-cart", {
                  method: "POST",
                  headers: {
                      "Content-Type": "application/json",
                      "X-CSRF-TOKEN": window.Laravel.csrfToken1 
                  },
              });

              const orderData = await response.json();
              if (orderData.order.id) {
                  return orderData.order.id;
              }

              throw new Error("Could not initiate PayPal Checkout.");
          } catch (error) {
              console.error(error);
          }
      },

      async onApprove(data) {
          try {
              const response = await fetch(`/api/paypal/order-cart/${data.orderID}/capture`, {
                  method: "POST",
                  headers: {
                      "Content-Type": "application/json",
                      "X-CSRF-TOKEN": window.Laravel.csrfToken2
                  },
              });

              const orderData = await response.json();
              console.log("Transaction completed:", orderData);
              location.reload(true);
              // You can handle success or redirect here
          } catch (error) {
              console.error(error);
          }
      },
  }).render("#paypal-button-container");
</script>
@endsection