# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  page = $('#sidebar_page_finder').html().trim()
  $('#sidebar_ul').children('li').removeClass("active")
  active_element = $('#sidebar_ul').find('#' + page)
  active_element.addClass("active")
    