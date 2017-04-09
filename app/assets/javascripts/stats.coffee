# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
# jQuery ->
$(document).on "turbolinks:load", ->

  $('#all').DataTable({
    "pageLength": 25,
    "order": [[ 6, "desc" ]]
  })

  $('#reddevils').DataTable( {
      "paging":   false,
      "info":     false,
      "order": [[ 5, "desc" ]]
  })

  $('#swarm').DataTable({
    "paging": false,
    "info":   false,
    "order": [[ 5, "desc" ]]
    })

  $('#stampede').DataTable({
    "paging": false,
    "info":   false,
    "order": [[ 5, "desc" ]]
    })

  $('#thunder').DataTable({
    "paging": false,
    "info":   false,
    "order": [[ 5, "desc" ]]
    })

  $('#admirals').DataTable({
    "paging": false,
    "info":   false,
    "order": [[ 5, "desc" ]]
    })
