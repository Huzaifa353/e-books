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
                @foreach($ebooksInCart as $ebook)
                <tr>
                    <td style="text-align: center">
                        <a href="#" >
                            <img width="23" height="23" src="https://img.icons8.com/ios-filled/666666/23/delete-sign--v1.png" alt="filled-trash"/>
                        </a>
                    </td>
                    <td style="width: 100px">
                        <div class="image-holder">
                            <img src="http://127.0.0.1:4001/storage/media/2GKvTqbwntp5DnViZB7hpqBOgKKfShvmNnowyXju.png">
                        </div>
                    </td>
                    <td>
                        {{ clean($ebook->ebook->slug) }}
                        <a href="http://127.0.0.1:4001/en/ebooks/batman-damned">Batman: Damned</a>
                    </td>
                    <td>2019</td>
                    <td>${{$ebook->ebook->price}}</td>
                </tr>
                @endforeach
                <tr>
                    <td style="text-align: center">
                        <a href="#">
                            <img width="23" height="23" src="https://img.icons8.com/ios-filled/666666/23/delete-sign--v1.png" alt="filled-trash"/>
                        </a>
                    </td>
                    <td>
                        <div class="image-holder">
                            <img src="http://127.0.0.1:4001/storage/media/2GKvTqbwntp5DnViZB7hpqBOgKKfShvmNnowyXju.png">
                        </div>
                    </td>
                    <td>
                        <a href="http://127.0.0.1:4001/en/ebooks/secret-wars">Secret Wars</a>
                    </td>
                    <td>2019</td>
                    <td>$566</td>
                </tr>
                <tr>
                    <td style="text-align: center">
                        <a href="#">
                            <img width="23" height="23" src="https://img.icons8.com/ios-filled/666666/23/delete-sign--v1.png" alt="filled-trash"/>
                        </a>
                    </td>
                    <td>
                        <div class="image-holder">
                            <img src="http://127.0.0.1:4001/storage/media/2GKvTqbwntp5DnViZB7hpqBOgKKfShvmNnowyXju.png">
                        </div>
                    </td>
                    <td>
                        <a href="http://127.0.0.1:4001/en/ebooks/101-animals-stories">101 Animals Stories</a>
                    </td>
                    <td>2019</td>
                    <td>$566</td>
                </tr>
                <tr style="font-weight: bold">
                    <td></td>
                    <td colspan="3">Total</td>
                    <td>$566</td>
                </tr>
            </tbody>
        </table>
    </div>
</div>
@endsection