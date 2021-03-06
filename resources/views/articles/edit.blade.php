@extends('layouts.master')
	@section('content')
	{{--@include('alerts.validation')--}}
	@include('alerts.message')

		{!!Form::model($article,['route'=>['articles.update',$article],'method'=>'PUT'])!!}
			@include('articles.form-fields')
			{!!Form::submit('Update',['class'=>'btn btn-primary'])!!}
		{!!Form::close()!!}

		{!!Form::open(['route'=>['articles.destroy', $article], 'method' => 'DELETE'])!!}
			{!!Form::submit('Delete',['class'=>'btn btn-danger pull-right'])!!}
		{!!Form::close()!!}
	@endsection