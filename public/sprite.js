"use strict";

var sprite = {
  map: {
    size: 256,
    subdivide: 16,
    position: "0 0",
    image: "0.png"
  },
};
var less = window.less = {
  functions: {
    overall_size: function() {
      return new(less.tree.Dimension)(docCookies.getItem('viewportSize') || 512, "px");
    },
    sprite_size: function(what) {
      return new(less.tree.Dimension)(sprite[what.value].size, "px");
    },
    sprite_subdivide: function(what) {
      return new(less.tree.Dimension)(sprite[what.value].subdivide, "px");
    },
    sprite_image: function(what) {
      return new(less.tree.Anonymous)(sprite[what.value].image);
    },
    sprite_position: function(what) {
      return new(less.tree.Anonymous)(sprite[what.value].position);
    },
  }
};
window.addEventListener('load', function() {
  for (var i in sprite) {
    var section = document.createElement('section');
    section.id = i;
    document.body.appendChild(section);
    for (var i=0; i<(16*16); i++) {
      var div = document.createElement('div');
      div.innerHTML = '<p>' + (Math.floor(i / 16)) + ', ' + (i % 16) + '</p>';
      section.appendChild(div);
    }
  }
});
