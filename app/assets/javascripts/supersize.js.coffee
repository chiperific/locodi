imgResizer = () ->
  div = $('.supersized')
  bgimg = $('.supersized-image')
  origHeight = bgimg.height()
  origWidth = bgimg.width()

  imgRatio = ( origWidth / origHeight ).toFixed(2)

  winRatio = ( div.width() / div.height() ).toFixed(2)

  if winRatio > imgRatio
    bgimg.width(div.width())
    bgimg.height(div.width() / imgRatio)
  else
    bgimg.height(div.height())
    bgimg.width(div.height() * imgRatio)

window.onload = () ->
  imgResizer()

$(window).resize ->
  imgResizer()