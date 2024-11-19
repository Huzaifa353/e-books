<?php

namespace Modules\Cart\Entities;

use Modules\Base\Eloquent\TranslationModel;

class CartsTranslation extends TranslationModel
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = ['ebook_id'];
}
