# for pages with background images, auto-fit the image to the screen
# on window load and resize

imgResizer = () ->
  div = $('.supersized')
  bgimg = $('.supersized-image')
  origHeight = bgimg.height()
  origWidth = bgimg.width()

  imgRatio = ( origWidth / origHeight )
  winRatio = ( div.width() / div.height() )

  if winRatio > imgRatio
    bgimg.width( div.width() )
    bgimg.height( div.width() / imgRatio )
  else
    bgimg.height( div.height() )
    bgimg.width( div.height() * imgRatio )

$(window).load ->
  imgResizer()
