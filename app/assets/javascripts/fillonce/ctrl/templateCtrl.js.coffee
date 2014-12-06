'use strict';

app = angular.module("Fonce", ['ngResource'])

app.factory "Template", ["$resource", ($resource) ->
  $resource("/templates/:id", {id: "@id"}, {update: {method: "PUT"}})
]

app.controller 'TemplaCtrl', ($scope, Template) ->
  $scope.templates = Template.query();
  template = new Template();
  template.name = "karthika";
  template.description = "Dothis madam"
  # $params = $.param({'template':{
      # '$resource.name': 'Karthika',
      # 'description': 'bookDataprice'
    # }});
  # template = JSON.stringify($params)
  # Template.save(template);





