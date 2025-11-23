// Parametric Enclosure – Bottom Case
// Units: millimeters

use <mods-case.scad>
include <params.scad>

// === MAIN MODEL ===
// difference() {
  union() {
    // the top
    base(base_w, base_d, base_th);

    //case main wall
    translate([0, 0, base_th]) {
      wall(top_w, top_d, top_h, top_th);
    }

    // case mating lip
    translate([0, 0, base_th + top_h]) {
      wall(base_w, base_d, base_h, lip_th);
    }
    translate([base_w, base_d,  0]) {
      rotate([0, 0, 45]) {
        cube([base_w*2, 0,0]);
      }
    }
  }
//}
