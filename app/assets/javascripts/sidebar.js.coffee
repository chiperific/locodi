jQuery ->
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
  wrap_height = $('#wrapper').height()
  
$(window).resize ->
  sidebarSmallScreenHider()