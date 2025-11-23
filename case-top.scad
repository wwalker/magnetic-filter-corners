// Parametric Enclosure – Bottom Case
// Units: millimeters

use <mods-case.scad>
include <params.scad>

// === MAIN MODEL ===
difference() {
  union() {
    // the top
    base(base_w, base_d, base_th);

    //case main wall
    translate([0, 0, base_th]) {
      wall(base_w, base_d, base_h, base_th);
    }

    // case mating lip
    translate([0, 0, base_th + base_h]) {
      wall(base_w, base_d, lip_h, lip_th);
    }
  }
  {
    translate([base_w, 0,  0]) {
      rotate([0, 0, 45]) {
        cube([base_w*2, base_d*2, base_h * 2]);
      }
    }
  }
}
