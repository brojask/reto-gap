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
	.when("/articles/stores/:id", {
		controller: "ArticlesStoresController",
		templateUrl: "templates/articles-stores.html"
	})
	.otherwise({redirectTo: '/'});
}])

.controller('ArticlesController', function($scope, ArticlesService){
	ArticlesService.get(function(data){		
		$scope.articles = data.articles;		
	});
})
.controller('CreateStoresArticlesController', function($scope){
		$scope.settings = {
		title: 'Create Article',
		action:'Create'
	}	
	$scope.article = {
		name :'',
		description:'',
		price: '',
		total_in_shelf: '',
		total_in_vault:'',
		store_name:''
	};
	$scope.submit = function(){
		ArticlesService.save($scope.article).$promise.then(function(data){
			if(data.msg){
				angular.copy({}, $scope.video);
				$scope.settings.success = "Article created!";
			}
		})
	}
})
.controller('EditArticlesController', function($scope, $routeParams, ArticlesService,StoresService){	
	$scope.settings = {
		title: 'Edit Article',
		action:'Edit'
	}
	ArticlesService.get({id: $routeParams.id}, function(data){		
		$scope.article = data.article;
	});
	StoresService.get(function(data){		
		$scope.stores = data.stores;
	});
	$scope.submit = function(){
		ArticlesService.update({id: $scope.article.id}, $scope.article).$promise.then(function(data){			
			if(data.success){				
				$scope.settings.success = "Article updated!";
			}
		})
	}
})

.controller('StoresController', function($scope, StoresService){
	StoresService.get(function(data){		
		$scope.stores = data.stores;		
	});
})
.controller('CreateStoresController', function($scope){

})
.controller('EditStoresController', function($scope, $routeParams, StoresService){
	StoresService.get({id: $routeParams.id}, function(data){		
		$scope.store = data.store;		
	});
})

.controller('ArticlesStoresController', function($scope, $routeParams, ArticlesStoresService){
	ArticlesStoresService.get({id: $routeParams.id}, function(data){		
		$scope.articles = data.articles;	
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
.factory('ArticlesStoresService',function($resource,API_URL){
	return $resource(API_URL+'articles/stores/:id', {id: "@id"}, {
		update: { method: 'PUT', params: {id:"@id"} }
	});
})