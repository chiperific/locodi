# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  page = $('#sidebar_page_finder').html().trim()
  $('#sidebar_ul').children('li').removeClass("active")
  active_element = $('#sidebar_ul').find('#' + page)
  active_element.addClass("active")

  $('#slider').slider {
    range: "min"
    value: 1
    min: 1
    max: 7
    step: 1
    slide: (event, ui) ->
      #alert $('#slider').slider('value')
  }

  $('.slider-btn').click ->
    parentLi = $(this).parent('li')
    parentLi.siblings().removeClass('active')
    parentLi.addClass('active')