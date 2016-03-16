var app = angular.module('app',['ngRoute','ngResource'])
.constant('API_URL', 'http://localhost:8000/services/')
.config(['$routeProvider',function($routeProvider){
	$routeProvider
	.when("/", {
		controller: "ArticlesController",
		templateUrl: "templates/articles.html"
	})
	.when("/articles/edit/:id", {
		controller: "EditArticlesController",
		templateUrl: "templates/articles-form.html"
	})
	.when("/stores", {
		controller: "StoresController",
		templateUrl: "templates/stores.html"
	})
	.when("/stores/edit/:id", {
		controller: "EditStoresController",
		templateUrl: "templates/stores-form.html"
	})	
	.otherwise({redirectTo: '/'});
}])

.controller('ArticlesController', function($scope, ArticlesService){
	ArticlesService.get(function(data){		
		$scope.articles = data.articles;		
	});
})
.controller('CreateStoresArticlesController', function($scope){

})
.controller('EditArticlesController', function($scope, $routeParams, ArticlesService){	
	$scope.settings = {
		title: 'Edit Article',
		action:'Edit'
	}
	ArticlesService.get({id: $routeParams.id}, function(data){
		console.log(data.article);
		$scope.article = data.article;
	});
})

.controller('StoresController', function($scope, StoresService){
	StoresService.get(function(data){		
		$scope.stores = data.stores;		
	});
})
.controller('CreateStoresController', function($scope){

})
.controller('EditStoresController', function($scope, $routeParams){
	StoresService.get({id: $routeParams.id}, function(data){		
		$scope.store = data.store;		
	});
})

.factory('ArticlesService',function($resource,API_URL){
	return $resource(API_URL+'articles/:id', {id: "@id"}, {
		update: { method: 'PUT', params: {id:"@id"} }
	});
})
.factory('StoresService',function($resource,API_URL){
	return $resource(API_URL+'stores/:id', {id: "@id"}, {
		update: { method: 'PUT', params: {id:"@id"} }
	});
})