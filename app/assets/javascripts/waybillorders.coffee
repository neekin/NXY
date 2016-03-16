# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  $(document).on 'change', '#waybillorder_line_id', (evt) ->
    $.ajax '/waybillorders/update_departs',
      type: 'GET'
      dataType: 'script'
      data: {
        line_id: $("#waybillorder_line_id option:selected").val()
      }
      error: (jqXHR, textStatus, errorThrown) ->
        console.log("AJAX Error: #{textStatus}")
      success: (data, textStatus, jqXHR) ->
        console.log("Dynamic select OK!")
