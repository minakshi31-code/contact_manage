<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use Illuminate\Database\Eloquent\SoftDeletes;

class Contacts extends Model
{
	use SoftDeletes;
    use HasFactory;
	protected $table = 'Contacts';	
    protected $fillable = ['id','full_name','mobile_number','created_at','updated_at','deleted_at'];
        
    public static function boot()
    {
        parent::boot();
    }

}
