# for pages with background images, auto-fit the image to the screen
# on window load and resize

bannerResizer = () ->
  # Match the banner's div to the size of the banner_title dive
  targetWidth = $('body').width()
  targetHeight = $('#banner_title').height() + 28
  bnrImgDiv = $('.banner-img-div')
  bnrImgDiv.height( targetHeight )
  bnrImgDiv.width( targetWidth )
  # Size the banner image apropriately
  bnrImg = $('.banner-img')
  origHeight = bnrImg.height()
  origWidth = bnrImg.width()

  imgRatio = ( origWidth / origHeight )
  divRatio = ( bnrImgDiv.width() / bnrImgDiv.height() )

  if divRatio > imgRatio
    bnrImg.width( targetWidth )
    bnrImg.height( targetWidth / imgRatio )
  else
    bnrImg.height( targetHeight )
    bnrImg.width( targetHeight * imgRatio )

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
  bannerResizer()
