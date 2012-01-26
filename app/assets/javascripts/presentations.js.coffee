# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
class Slideshow
  constructor: () ->
    @slides = $('.slide')
    @current = 0

    $(document).keydown (e) ->
      code = e.keyCode || e.which
      s.next() if code == 40
      s.prev() if code == 38
      e.preventDefault() if code == 40 || code == 38
  next: () ->
    if s.slides[@current + 1]
      @current++
      $.scrollTo($(s.slides[@current]), 'li:eq(15)', 1000)
  prev: () ->
    if s.slides[@current - 1]
      @current--
      $.scrollTo($(s.slides[@current]), 'li:eq(15)', 1000)  	

$ ->
  window.s = new Slideshow

