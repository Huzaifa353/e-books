<?php


namespace Modules\Cart\Entities;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Modules\Base\Eloquent\Model;
use Modules\Base\Traits\Sluggable;
use Modules\Base\Eloquent\Translatable;
use Modules\Author\Admin\Table\AuthorTable;
use Modules\Files\Eloquent\HasMedia;
use Modules\Files\Entities\Files;
use Modules\User\Entities\User;
use Modules\Ebook\Entities\Ebook;

class Carts extends Model
{
    use HasMedia;

    protected $fillable = ['user_id','ebook_id'];

    public function ebook()
    {
        return $this->belongsTo(Ebook::class, 'ebook_id', 'id');
    }   
}
