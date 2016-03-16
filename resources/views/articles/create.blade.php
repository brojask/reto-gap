@extends('layouts.master')
	@section('content')
	@include('alerts.message')
	{!!Form::open(['route'=>'articles.store', 'method'=>'POST'])!!}
		@include('articles.form-fields')
		{!!Form::submit('Create',['class'=>'btn btn-primary'])!!}
	{!!Form::close()!!}
	@endsection