<div class="form-group">
		{!!Form::label('name','Name:')!!}
		{!!Form::text('name', null,['class'=>'form-control','placeholder'=>'Name'])!!}
	</div>
	<div class="form-group">
		{!!Form::label('description','Description:')!!}
		{!!Form::text('description',null,['class'=>'form-control','placeholder'=>'Description'])!!}
	</div>
	<div class="form-group">
		{!!Form::label('price','Price:')!!}
		{!!Form::text('price',null,['class'=>'form-control','placeholder'=>'Price'])!!}
	</div>
		<div class="form-group">
		{!!Form::label('total_in_shelf','In Shelf:')!!}
		{!!Form::text('total_in_shelf',null,['class'=>'form-control','placeholder'=>'total_in_shelf'])!!}
	</div>
		<div class="form-group">
		{!!Form::label('total_in_vault','In Vault:')!!}
		{!!Form::text('total_in_vault',null,['class'=>'form-control','placeholder'=>'total_in_vault'])!!}
	</div>
		<div class="form-group">
		{!!Form::label('store_name','Store Name:')!!}
		{!!Form::text('store_name',null,['class'=>'form-control','placeholder'=>'Store'])!!}
	</div>