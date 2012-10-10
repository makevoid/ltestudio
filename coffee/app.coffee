$ ->
  # variables

  cur_idx = 0


  # functions

  gal_resize = (element) ->
    img_height = ->
      $("#{element} img:first").height()

    set_height = ->
      $(element).height img_height()

    $(element).imagesLoaded ->
      set_height()

    $(window).resize ->
      set_height()

  gal_anim = (element) ->
    time = 3000
    # time = 1100

    setTimeout =>
      images = _($("#{element} img")).map (el) -> el
      cond = cur_idx >= images.length-1
      next_idx = if cond then 0 else cur_idx+1
      $(images[cur_idx]).css "opacity", 0
      $(images[next_idx]).css "opacity", 1
      # console.log "hiding #{cur_idx}, showing #{next_idx}"
      cur_idx = if cond then 0 else cur_idx + 1

      gal_anim element
    , time

  gal_anim_with_cycle = (element) ->
    $(element).cycle()

  is_ie = navigator.userAgent.match(/MSIE/)


  # main

  $("body").addClass "ie" if is_ie

  gallery_elem = "#img_gal"

  gal_resize gallery_elem

  unless is_ie
    gal_anim gallery_elem
  else
    gal_anim_with_cycle gallery_elem
