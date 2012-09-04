(function() {

  $(function() {
    var cur_idx, gal_anim;
    cur_idx = 0;
    gal_anim = function() {
      var time,
        _this = this;
      time = 3000;
      return setTimeout(function() {
        var cond, images, next_idx;
        images = _($("#img_gal img")).map(function(el) {
          return el;
        });
        cond = cur_idx >= images.length - 1;
        next_idx = cond ? 0 : cur_idx + 1;
        $(images[cur_idx]).css("opacity", 0);
        $(images[next_idx]).css("opacity", 1);
        cur_idx = cond ? 0 : cur_idx + 1;
        return gal_anim();
      }, time);
    };
    return gal_anim();
  });

}).call(this);
