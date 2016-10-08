# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  # Blog: scrollTo div on nav-btn click
  $('.blog-nav-btn').click ->
    blogId = $(this).attr('id').substring(0,1)
    $('#page_body').scrollTo( $('#'+ blogId), { duration: 1000 } )

  # Blog images get an added align="left" attribute
  $('.separator').children('a').children('img').attr('align', 'left')

