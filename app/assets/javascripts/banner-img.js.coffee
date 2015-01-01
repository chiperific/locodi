bannerResizer = () ->
  targetDiv = $('#banner_title')
  alert targetDiv
  bnrimg = $('.banner-img')
  origHeight = bnrimg.height()
  origWidth = bnrimg.width()

  imgRatio = ( origWidth / origHeight ).toFixed(2)

  divRatio = ( targetDiv.width() / targetDiv.height() )

  if divRatio > imgRatio
    bnrimg.width( targetDiv.width() )
    bnrimg.height( targetDiv.width() / imgRatio )
  else
    bnrimg.height( targetDiv.height() )
    bnrimg.width( targetDiv.height() * imgRatio )

window.onload = () ->
  bannerResizer()

$(window).resize ->
  bannerResizer()