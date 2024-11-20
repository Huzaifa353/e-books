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
                @foreach($ebooks as $ebook)
                <tr>
                    <td style="text-align: center">
                        <a href="{{route('cart.remove', $ebook->id)}}" >
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
            </tbody>
        </table>
    </div>
</div>
@endsection