jQuery ->
  # handle sidebar page highlighting
  page = $('#sidebar_page_finder').html().trim()
  $('#sidebar_ul').children('li').removeClass("active")
  active_element = $('#sidebar_ul').find('#' + page)
  active_element.addClass("active")

  $('#sidebar_toggle').click (e) ->
    e.preventDefault()
    $("#wrapper").toggleClass("show-sidebar")

sidebarSmallScreenHider = () ->
  if $(window).width() < 500
    $("#wrapper").removeClass("show-sidebar")
  else
    $("#wrapper").addClass("show-sidebar")


$('#wrapper').ready ->
  sidebarSmallScreenHider()
  
$(window).resize ->
  sidebarSmallScreenHider()