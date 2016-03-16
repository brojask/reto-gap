@extends('layouts.master')
	@section('content')
	@include('alerts.message')
	{!!Form::open(['route'=>'stores.store', 'method'=>'POST'])!!}
		@include('stores.form-fields')
		{!!Form::submit('Create',['class'=>'btn btn-primary'])!!}
	{!!Form::close()!!}
	@endsection