@extends('layouts.master')

@section('title', 'Stores')

@section('content')
    
	@foreach($articles as $article)
	<div class="panel panel-success">
	  <!-- Default panel contents -->
	  <div class="panel-heading">{{$article->name}}</div>
	  <div class="panel-body">
	    <p>{{$article->description}}</p>
	    <!-- List group -->
	  <ul class="list-inline">
	  	<li><strong>ID:</strong> {{$article->id}}</li>
	    <li><strong>Price:</strong> {{$article->price}}</li>
	    <li><strong>In Shelf:</strong> {{$article->total_in_shelf}}</li>
	    <li><strong>In Vault:</strong> {{$article->total_in_vault}}</li>
	    <li><strong>Store Name:</strong> <a href="#">{{$article->store->name}}</a></li>
	  </ul>	
	  </div>

	    
	  <div class="panel panel-footer">
	  	<a href="articles/edit/{{$article->id}}" class="btn btn-success pull-right">Edit</a>
	  </div>

	</div>	
	@endforeach
	



@endsection