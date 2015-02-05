#=require fancybox

ready = ->
  $("a.fancybox").fancybox(parent: 'body')
  $(".fancybox").fancybox
    beforeShow: ->
      alt = this.element.find('img').attr('alt')
      this.inner.find('img').attr('alt', alt)
      this.title = alt

$(document).ready(ready)