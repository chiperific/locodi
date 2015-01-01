# for pages with background images, auto-fit the image to the screen 
# on window load and resize

imgResizer = () ->
  div = $('.supersized')
  bgimg = $('.supersized-image')
  origHeight = bgimg.height()
  origWidth = bgimg.width()

  imgRatio = ( origWidth / origHeight ).toFixed(2)

  winRatio = ( div.width() / div.height() ).toFixed(2)

  if winRatio > imgRatio
    bgimg.width( div.width() )
    bgimg.height( div.width() / imgRatio )
  else
    bgimg.height( div.height() )
    bgimg.width( div.height() * imgRatio )

# If I decide to mess with turbolinks:
# first, add //= require turbolinks back to application.js
#$(document).on "page:change", ->
#  imgResizer()

window.onload = () ->
  imgResizer()

$(window).resize ->
  imgResizer()