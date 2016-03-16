<!DOCTYPE html>
<!--[if lt IE 7]>
    <html class="no-js lt-ie9 lt-ie8 lt-ie7">
    <![endif]-->
    <!--[if IE 7]>
        <html class="no-js lt-ie9 lt-ie8">
        <![endif]-->
        <!--[if IE 8]>
            <html class="no-js lt-ie9">
            <![endif]-->
            <!--[if gt IE 8]>
                <!
            -->
            <html class="no-js" ng-app="app">
                <!--
                <![endif]-->
                <head>
                    <meta charset="utf-8"/>
                    <title>
                        Super Zapatos App
                    </title>
                    <meta name="viewport" content="width=device-width, initial-scale=1"/>
                    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet"/>                    
                </head>
                <body>
                <div ng-include="'templates/nav.html'"></div>
                    <div class="container">
                        <div class="col-md-6 col-md-offset-3" ng-view></div>
                    </div>
                    {!! Html::script('bower_components/angular/angular.min.js') !!}
                    {!! Html::script('bower_components/angular-route/angular-route.min.js') !!}
                    {!! Html::script('bower_components/angular-resource/angular-resource.min.js') !!}                    
                    {!! Html::script('bower_components/jquery/dist/jquery.min.js') !!}
                    {!! Html::script('bower_components/bootstrap/dist/js/bootstrap.min.js') !!}
                    {!! Html::script('js/app.js') !!}
                </body>
            </html>
