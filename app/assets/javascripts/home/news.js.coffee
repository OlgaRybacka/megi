$ ->
  countAkt = ->
    count = $('.aktualnosci .aktualnosci_text').size()
  currentAkt = ->
    pos = 0
    i = 0
    $('.aktualnosci .aktualnosci_text').each ->
      if $(this).is(':visible')
        pos = i
      i++
    pos
  switchTo = (pos)->
    $('.aktualnosci .aktualnosci_text:visible').fadeOut('slow')
    $($('.aktualnosci .aktualnosci_text').get(pos)).fadeIn('slow')
    
  $('.aktualnosci .akt_nav_next').click (e) ->
    count = countAkt()
    current = currentAkt()
    switchTo((current+1)%count)
  $('.aktualnosci .akt_nav_prev').click (e) ->
    count = countAkt()
    current = currentAkt()
    switchTo((current+count-1)%count)
