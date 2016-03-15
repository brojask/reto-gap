<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Article;

class Store extends Model
{
    protected $fillable = ['name', 'address'];

    public function articles(){
        return $this->hasMany('App\Article');
    }
}
