(function() {

  $(function() {
    var cur_idx, fancybox, gal_anim, gal_anim_with_cycle, gal_bind_clicks, gal_resize, gallery_elem, google_map, is_ie, resize_bada;
    cur_idx = 0;
    gal_resize = function(element) {
      var img_height, set_height;
      img_height = function() {
        return $("" + element + " img:first").height();
      };
      set_height = function() {};
      $(element).imagesLoaded(function() {
        return set_height();
      });
      return $(window).resize(function() {
        return set_height();
      });
    };
    gal_anim = function(element) {
      var time,
        _this = this;
      time = 3000;
      return setTimeout(function() {
        var cond, images, next_idx;
        images = _($("" + element + " a")).map(function(el) {
          return el;
        });
        cond = cur_idx >= images.length - 1;
        next_idx = cond ? 0 : cur_idx + 1;
        $(images[cur_idx]).css("opacity", 0);
        $(images[next_idx]).css("opacity", 1);
        cur_idx = cond ? 0 : cur_idx + 1;
        return gal_anim(element);
      }, time);
    };
    gal_anim_with_cycle = function(element) {
      return $(element).cycle();
    };
    gal_bind_clicks = function(element, idx) {
      $(element).off("click");
      return $(element).on("click", function(evt) {
        var elem, images;
        images = _($("" + element + " img")).map(function(el) {
          return el;
        });
        elem = $(images[cur_idx]);
        return window.location = elem.data("link");
      });
    };
    google_map = function() {
      var gmap, maps;
      maps = {};
      gmap = function(div, lat, lng) {
        var latLng, mapDiv, marker;
        mapDiv = document.getElementById(div);
        latLng = new google.maps.LatLng(lat, lng);
        maps[div] = new google.maps.Map(mapDiv, {
          center: latLng,
          zoom: 15,
          mapTypeId: google.maps.MapTypeId.ROADMAP
        });
        return marker = new google.maps.Marker({
          position: latLng,
          map: maps[div]
        });
      };
      gmap('map_canvas', 43.788327, 11.234041);
      return gmap('map_canvas2', 41.547774, 14.664314);
    };
    fancybox = function() {
      var gallery;
      gallery = $(".fancy");
      return gallery.fancybox({
        padding: 0,
        maxWidth: "80%",
        helpers: {
          overlay: {
            css: {
              background: 'rgba(200, 200, 200, 0.6)'
            }
          }
        }
      });
    };
    is_ie = navigator.userAgent.match(/MSIE/);
    if (is_ie) {
      $("body").addClass("ie");
    }
    gallery_elem = "#img_gal";
    gal_resize(gallery_elem);
    if (!is_ie) {
      gal_anim(gallery_elem);
    } else {
      gal_anim_with_cycle(gallery_elem);
    }
    fancybox();
    resize_bada = function() {
      if (navigator.userAgent.match(/Bada/)) {
        return $("#container, body").width(360);
      }
    };
    resize_bada();
    if (typeof google !== "undefined" && google !== null) {
      return google_map();
    }
  });

}).call(this);
