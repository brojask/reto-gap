<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;

use App\Http\Requests;
	
use App\Article;

use Session;
use Redirect;


class ArticlesController extends Controller
{


    function index() {
    	$articles = Article::orderBy('id', 'DESC')->with(
            array('Store' => function ($query) {
                $query->select('id', 'name');
            })
        )->get();
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

	public function getStores($id)
    {

	    $articles = Article::where('store_id', $id)->get();        
	    if ($articles->count() <= 0) {
	        return response(['success' => false, 'error_code' => 404, 'error_msg' => 'Record not found'], 404);
	    }        
	    return response(['success' => true, 'articles' => $articles, 'total_elements' => count($articles)], 200);
        
    }

    function listArticles(){
    	$articles = Article::orderBy('id', 'DESC')->with(
            array('Store' => function ($query) {
                $query->select('id', 'name');
            })
        )->get();
    	return view('articles.index', ['articles' => $articles] );
    }

    function editArticles($id) {
    	$article = Article::find($id);
    	return view('articles.edit',['article'=>$article]);
    }

    function create() {
    	return view( 'articles.create' );
    }

    function update(Request $request, $id){
    	$joke = Article::find($id);
        $joke->name = $request->name;
        $joke->description = $request->description;
        $joke->price = $request->price;
        $joke->total_in_shelf = $request->total_in_shelf;
        $joke->total_in_vault = $request->total_in_vault;
        //$joke->price = $request->user_id;
        $joke->save();
        Session::flash('message','Article Updated!');
        return Redirect::to('articles/edit/'.$id);
    }
}
