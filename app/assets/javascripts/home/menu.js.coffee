$ ->
  $('.ul-menu a').click (e)->
    e.preventDefault()
    id = $(this).attr('href')
    $.scrollTo(id,500
      axis: 'y'
      offset: -80)
