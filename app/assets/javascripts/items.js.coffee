# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
  $("#sortable" ).sortable();
  $('#sortable').on 'sortupdate', (event, ui) ->
    $.ajax
      type: 'PUT'
      # url: $("#sortable").data("update");
      url: '/items/sort'
      data: items: $("#sortable").sortable("toArray");
