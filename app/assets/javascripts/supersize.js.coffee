# for pages with background images, auto-fit the image to the screen 
# on window load and resize

miniSocialResizer = () ->
  targetHeight = $('#mini_blog').height()
  $('#mini_social').height(targetHeight)
  tableHeight = $('#blog_table').height() + 20
  $('#rebelmouse-embed-iframe').attr("height", tableHeight)
  # $('#rebelmouse-embed-iframe').height(tableHeight)


# TEMP - if the 3 homepage boxes get removed, remove this function
boxStandardizer = () ->
  box1 = $('#box1').height()
  box2 = $('#box2').height()
  box3 = $('#box3').height()
  targetHeight = Math.max(box1, box2, box3)
  $('#box1').height(targetHeight)
  $('#box2').height(targetHeight)
  $('#box3').height(targetHeight)

pageBodyResizer = () ->
  bannerHeight = $('#banner_title').height() + 28
  winHeight = $(window).height()
  $('#page_body').height(winHeight - bannerHeight)
  # make #page_body a scrollable div and freeze html and body
  if $(window).height() > 400
    $('body').addClass('overflow-hidden')
    $('#page_body').addClass('overflowy-scroll')
    $('#blog_nav').removeClass('display-none')
  else
    $('body').removeClass('overflow-hidden')
    $('#page_body').removeClass('overflowy-scroll')
    $('#blog_nav').addClass('display-none')

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
  pageBodyResizer()
  imgResizer()
  bannerResizer()
  boxStandardizer()
  miniSocialResizer()

$(window).resize ->
  pageBodyResizer()
  imgResizer()
  bannerResizer()
  boxStandardizer()
  miniSocialResizer()

# If I decide to mess with turbolinks:
  # first, add //= require turbolinks back to application.js
  #$(document).on "page:change", ->
  #  imgResizer()