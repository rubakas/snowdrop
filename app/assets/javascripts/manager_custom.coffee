ready = ->
  # Ability to select table row and redirect to url in it
  $(document).on 'click', "tr.selectable-row td", ->
    unless $(this).hasClass("unselectable")
      window.location = $(this).parent().data("link")

  # Submit search form via ajax
  $("#search_query").on 'keyup', ->
    setTimeout ->
      $(".search-form").submit()
    ,1000

  # Clear search input
  $("#clear_search").on 'click', ->
    $("#search_query").val('')

  # Import bootstrap-selecr
  $('.selectpicker').selectpicker();

  #Flash toast animation
  $('.toast').delay(3000).fadeOut(600);

$(document).ready(ready)
$(document).on('page:load', ready)
$(document).on('turbolinks:load', ready)
