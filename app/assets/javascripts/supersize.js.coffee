# for pages with background images, auto-fit the image to the screen 
# on window load and resize

pageBodyResizer = () ->
  bannerHeight = $('#banner_title').height() + 28
  winHeight = $(window).height()
  $('#page_body').height(winHeight - bannerHeight)
  # make #page_body a scrollable div and freeze html and body
  if $(window).height() > 400
    $('html').addClass('overflow-hidden')
    $('body').addClass('overflow-hidden')
    $('#page_body').addClass('overflowy-scroll')
  else
    $('html').removeClass('overflow-hidden')
    $('body').removeClass('overflow-hidden')
    $('#page_body').removeClass('overflowy-scroll')

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

historyNavSetter = () ->
  urlId = location.hash.substring(1)
  if urlId != ""
    $('#page_body').scrollTo( $('#'+ urlId) )
    target = $('a.slider-btn#'+ urlId + '_btn')
    parentLi = $(target).parent('li')
    parentLi.siblings().removeClass('active')
    parentLi.addClass('active')
    $('#slider').slider('value', urlId)

window.onload = () ->
  imgResizer()
  bannerResizer()
  historyNavSetter()
  pageBodyResizer()

$(window).resize ->
  imgResizer()
  bannerResizer()
  pageBodyResizer()

# If I decide to mess with turbolinks:
  # first, add //= require turbolinks back to application.js
  #$(document).on "page:change", ->
  #  imgResizer()