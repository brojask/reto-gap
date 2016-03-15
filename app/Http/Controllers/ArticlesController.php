<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;

use App\Http\Requests;
	
use App\Article;




class ArticlesController extends Controller
{


    function index() {
    	$articles = Article::all();
    	if(!$articles){
    		return response(['success' => false, 'error_code'=>404, 'error_msg'=>'Record not found', 404]);    		
    	}
    	#return response(['success' => true, 'articles'=>$this->transformCollection($articles)], 200);
    	return response(['success' => true, 'articles'=>$this->transformCollection($articles)], 200);
    	
    }

    public function show($id){
        $article = Article::find($id);
 
        if(!$article){
            return response(['success' => false, 'error_code'=>404, 'error_msg'=>'Record not found', 404]);    	
        }
 		return response(['success' => true, 'article'=>$this->transform($article), 200]);    	

	}

	private function transformCollection($articles){
	    return array_map([$this, 'transform'], $articles->toArray());
	}
 
	private function transform($article){
	    return [
	           'id' => $article['id'],
	           'description' => $article['description'],
	           'name' => $article['name'],
	           'price' => $article['price'],
	           'total_in_shelf' => $article['total_in_shelf'],
	           'total_in_vault' => $article['total_in_vault'],
	           'store_name' => $article['store']['name']
	        ];
	}
}
