# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $(".ajaxable").on 'change', ->
    $.ajax {
      url: 'items/'+$(this).attr('id')
      type: 'PATCH',
      data: {
        item: {
          hay: $(this).is(':checked')
        }
      },
      dataType: 'json'
    }
    #alert $(this).is(':checked')
