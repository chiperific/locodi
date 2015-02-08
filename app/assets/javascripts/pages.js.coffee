# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  # Style the slider on Work page
  $('#slider').slider {
    range: "min"
    value: 1
    min: 1
    max: 6
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

  # Blog: scrollTo div on nav-btn click
  $('.blog-nav-btn').click ->
    blogId = $(this).attr('id').substring(0,1)
    $('#page_body').scrollTo( $('#'+ blogId), { duration: 1000 } )

  # Blog images get an added align="left" attribute
  $('.separator').children('a').children('img').attr('align', 'left')
