@extends('layouts.master')

@section('title', 'Stores')

@section('content')
@include('alerts.message')
	<h1>Stores</h1>	
	<hr>
	<a href="stores/create" class="btn btn-danger btn-block">Add New</a>
	<hr>
	@foreach($stores as $store)
	<div class="panel panel-danger">
	  <!-- Default panel contents -->
	  <div class="panel-heading">{{$store->name}}</div>
	  <div class="panel-body">
	    <p>{{$store->address}}</p>
	  </div>

	    
	  <div class="modal-footer">
	  	<a href="stores/edit/{{$store->id}}" class="btn btn-danger pull-right">Edit</a>
	  </div>

	</div>	
	@endforeach
@endsection