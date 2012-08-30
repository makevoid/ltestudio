$ ->
  cur_idx = 0
  
  gal_anim = ->
    time = 6000
    # time = 1000

    setTimeout =>
      images = _($("#img_gal img")).map (el) -> el
      cond = cur_idx >= images.length-1
      next_idx = if cond then 0 else cur_idx+1
      $(images[cur_idx]).css "opacity", 0
      $(images[next_idx]).css "opacity", 1
      # console.log "hiding #{cur_idx}, showing #{next_idx}"
      cur_idx = if cond then 0 else cur_idx + 1

      gal_anim()
    , time
    
  gal_anim()

