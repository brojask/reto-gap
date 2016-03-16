<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Article extends Model
{
    protected $fillable = ['name', 'description','price','total_in_shelf','total_in_vault','store_id'];

    public function store(){
    	return $this->belongsTo('App\Store', 'store_id');
    }

    function getStore(){
    	return Store::where('id',$this->store_id)->first()->name;
    }
}
