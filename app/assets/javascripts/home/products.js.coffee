$ ->
  $('.naszyjniki_lista_nawigacja .akt_nav_prev')
    .click (e)->
      e.preventDefault()
      $('#wrapper_naszyjniki .scroll_pane').animate
        left: "+=500"
        ,600
  $('.naszyjniki_lista_nawigacja .akt_nav_next')
    .click (e)->
      e.preventDefault()
      $('#wrapper_naszyjniki .scroll_pane').animate
        left: "-=500"
        ,600
  
  $('.naszyjnik_miniatura a').click (e) ->
    e.preventDefault()
    id = $(this).attr('href').substr(1)
    $('.product_').hide()
    $('.' + id).show()

