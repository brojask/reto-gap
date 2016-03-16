<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;

use App\Http\Requests;
	
use App\Article;
use App\Store;

use Session;
use Redirect;


class ArticlesController extends Controller
{


    function index(Request $request) {
        $limit = $request->input('limit')?$request->input('limit'):5;


    	$articles = Article::orderBy('id', 'DESC')->with(
            array('Store' => function ($query) {
                $query->select('id', 'name');
            })
        )->get();
        /*$articles = Article::orderBy('id', 'DESC')->with(
            array('Store' => function ($query) {
                $query->select('id', 'name');
            })
        )->select('id','description','name','price','total_in_shelf','total_in_vault','store_id')->paginate(5);*/
    	if(!$articles){
    		return response(['success' => false, 'error_code'=>404, 'error_msg'=>'Record not found', 404]);    		
    	}    	
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

    /*private function transformCollection($jokes){
        $jokesArray = $jokes->toArray();
        return [
            'total' => $jokesArray['total'],
            'per_page' => intval($jokesArray['per_page']),
            'current_page' => $jokesArray['current_page'],
            'last_page' => $jokesArray['last_page'],
            'next_page_url' => $jokesArray['next_page_url'],
            'prev_page_url' => $jokesArray['prev_page_url'],
            'from' => $jokesArray['from'],
            'to' =>$jokesArray['to'],
            'data' => array_map([$this, 'transform'], $jokesArray['data'])
        ];
    }*/
 
	private function transform($article){
	    return [
	           'id' => $article['id'],
	           'description' => $article['description'],
	           'name' => $article['name'],
	           'price' => $article['price'],
	           'total_in_shelf' => $article['total_in_shelf'],
	           'total_in_vault' => $article['total_in_vault'],
	           'store_name' => $article['store']['name'],
               'store_id' => $article['store']['id']
	        ];
	}

	public function getStores($id)
    {

	    //$articles = Article::where('store_id', $id)->get();  
        $articles = Article::where('store_id', $id)->orderBy('id', 'DESC')->with(
            array('Store' => function ($query) {
                $query->select('id', 'name');
            })
        )->get();      
	    if ($articles->count() <= 0) {
	        return response(['success' => false, 'error_code' => 404, 'error_msg' => 'Record not found'], 404);
	    }        
	    return response(['success' => true, 'articles' => $this->transformCollection($articles), 'total_elements' => count($articles)], 200);
        
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
        $stores = Stores::all();
    	$article = Article::find($id);
    	return view('articles.edit',['article'=>$article, 'stores' => $stores]);
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
        $joke->store_id = $request->store_id;
        $joke->save();
        return response(['success' => true, 'msg'=>'Article Updated!', 200]);         
    }
}
