module l_shape(w, h, w_h, h_w)
{
  function l_points(w, h, w_h, h_w) =
    [
      [0,   0],
      [w,   0],
      [w,   w_h],
      [h_w, w_h],
      [h_w, h],
      [0,   h],
      [0,   0]
    ];
    polygon(l_points(w, h, w_h, h_w));
}

module base(w, d, h) {
  cube([w, d, h]);
}

module wall(w, d, h, th) {
  difference() {
    cube([w, d, h]);
    translate([th, th, 0])
      cube([w - 2 * th, d - 2 * th, h]);
  }
}
