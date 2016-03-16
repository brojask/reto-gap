@extends('layouts.master')

@section('title', 'Stores')

@section('content')
    	@foreach($stores as $store)
	<div class="panel panel-info">
	  <!-- Default panel contents -->
	  <div class="panel-heading">{{$store->name}}</div>
	  <div class="panel-body">
	    <p>{{$store->address}}</p>
	  </div>

	    
	  <div class="panel panel-footer">
	  	<a href="stores/edit/{{$store->id}}" class="btn btn-success pull-right">Edit</a>
	  </div>

	</div>	
	@endforeach
@endsection