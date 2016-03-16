@extends('layouts.master')
	@section('content')
	{{--@include('alerts.validation')--}}
	@include('alerts.message')

		{!!Form::model($store,['route'=>['stores.update',$store],'method'=>'PUT'])!!}
			@include('stores.form-fields')
			{!!Form::submit('Update',['class'=>'btn btn-primary'])!!}
		{!!Form::close()!!}

		{!!Form::open(['route'=>['stores.destroy', $store], 'method' => 'DELETE'])!!}
			{!!Form::submit('Delete',['class'=>'btn btn-danger pull-right'])!!}
		{!!Form::close()!!}
	@endsection