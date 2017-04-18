# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on "turbolinks:load", ->
  t = $('#all').DataTable(
    'pageLength': 25,
    'order': [[ 7, "desc" ]])
  t.on('order.dt search.dt', ->
    t.column(0,
      search: 'applied'
      order: 'applied').nodes().each (cell, i) ->
      cell.innerHTML = i + 1
      return
    return
  ).draw()
  return

$(document).on "turbolinks:load", ->
  t = $('#forwards').DataTable(
    'pageLength': 25,
    'order': [[ 7, "desc" ]])
  t.on('order.dt search.dt', ->
    t.column(0,
      search: 'applied'
      order: 'applied').nodes().each (cell, i) ->
      cell.innerHTML = i + 1
      return
    return
  ).draw()
  return

$(document).on "turbolinks:load", ->
  t = $('#defenders').DataTable(
    'pageLength': 25,
    'order': [[ 7, "desc" ]])
  t.on('order.dt search.dt', ->
    t.column(0,
      search: 'applied'
      order: 'applied').nodes().each (cell, i) ->
      cell.innerHTML = i + 1
      return
    return
  ).draw()
  return

$(document).on "turbolinks:load", ->
  t = $('#goalies').DataTable(
    'pageLength': 25,
    'order': [[ 5, "asc" ]])
  t.on('order.dt search.dt', ->
    t.column(0,
      search: 'applied'
      order: 'applied').nodes().each (cell, i) ->
      cell.innerHTML = i + 1
      return
    return
  ).draw()
  return

$(document).on "turbolinks:load", ->
  t = $('#swarm').DataTable(
    "paging":   false,
    "info":     false,
    "order": [[ 6, "desc" ]])
  t.on('order.dt search.dt', ->
    t.column(0,
      search: 'applied'
      order: 'applied').nodes().each (cell, i) ->
      cell.innerHTML = i + 1
      return
    return
  ).draw()
  return

$(document).on "turbolinks:load", ->
  t = $('#reddevils').DataTable(
    "paging":   false,
    "info":     false,
    "order": [[ 6, "desc" ]])
  t.on('order.dt search.dt', ->
    t.column(0,
      search: 'applied'
      order: 'applied').nodes().each (cell, i) ->
      cell.innerHTML = i + 1
      return
    return
  ).draw()
  return

$(document).on "turbolinks:load", ->
  t = $('#rd-goalies').DataTable(
    'pageLength': 25,
    'order': [[ 5, "asc" ]])
  t.on('order.dt search.dt', ->
    t.column(0,
      search: 'applied'
      order: 'applied').nodes().each (cell, i) ->
      cell.innerHTML = i + 1
      return
    return
  ).draw()
  return

$(document).on "turbolinks:load", ->
  t = $('#thunder').DataTable(
    "paging":   false,
    "info":     false,
    "order": [[ 6, "desc" ]])
  t.on('order.dt search.dt', ->
    t.column(0,
      search: 'applied'
      order: 'applied').nodes().each (cell, i) ->
      cell.innerHTML = i + 1
      return
    return
  ).draw()
  return

$(document).on "turbolinks:load", ->
  t = $('#stampede').DataTable(
    "paging":   false,
    "info":     false,
    "order": [[ 6, "desc" ]])
  t.on('order.dt search.dt', ->
    t.column(0,
      search: 'applied'
      order: 'applied').nodes().each (cell, i) ->
      cell.innerHTML = i + 1
      return
    return
  ).draw()
  return

$(document).on "turbolinks:load", ->
  t = $('#admirals').DataTable(
    "paging":   false,
    "info":     false,
    "order": [[ 6, "desc" ]])
  t.on('order.dt search.dt', ->
    t.column(0,
      search: 'applied'
      order: 'applied').nodes().each (cell, i) ->
      cell.innerHTML = i + 1
      return
    return
  ).draw()
  return
