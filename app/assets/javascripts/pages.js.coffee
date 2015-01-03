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
    change: () ->
      val = $('#slider').slider('value')
      target = $('a.slider-btn#'+ val + '_btn')
      parentLi = $(target).parent('li')
      parentLi.siblings().removeClass('active')
      parentLi.addClass('active')
      # scroll the apropriate header into view in #page_body
      $('#page_body').scrollTo( $('#'+ val), { duration: 1000 } )
  }

  #slider nav links on click
  $('.slider-btn').click ->
    parentLi = $(this).parent('li')
    parentLi.siblings().removeClass('active')
    parentLi.addClass('active')
    #change the slider position
    hrefId = $(this).attr('id').substring(0,1)
    $('#slider').slider('value', hrefId)
    # scroll the apropriate header into view in #page_body
    $('#page_body').scrollTo( $('#'+ hrefId), { duration: 1000 } )
    event.preventDefault()


