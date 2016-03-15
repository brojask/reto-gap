<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;

use App\Http\Requests;

use App\Store;
use App\Articles;

class StoresController extends Controller
{
    function index() {
    	$stores = Store::all(); //Not a good idea
    	if(!$stores){
    		return response(['success' => false, 'error_code'=>404, 'error_msg'=>'Record not found', 404]);    		
    	}
    	return response(['success' => true, 'stores'=>$this->transformCollection($stores),'total_elements'=>count($stores)], 200);
    	
    }

    public function show($id){

    	#if(is_int($id)) {
    		$store = Store::find($id);
	 
	        if(!$store){
	            return response(['success' => false, 'error_code'=>404, 'error_msg'=>'Record not found', 404]);    	
	        }
	 		return response(['success' => true, 'store'=>$this->transform($store),'total_elements'=>count($store), 200]);    		
    	#}
    	#return response(['success' => false, 'error_code'=>400, 'error_msg'=>'Bad Request', 400]);    	
        

	}

	private function transformCollection($stores){
	    return array_map([$this, 'transform'], $stores->toArray());
	}
 
	private function transform($store){
	    return [
	           'id' => $store['id'],
	           'address' => $store['address'],
	           'name' => $store['name']
	        ];
	}
}
