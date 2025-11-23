// Parametric Enclosure – Bottom Case
// Units: millimeters

use <mods-case.scad>
include <params.scad>

$fn = 100;

// === MAIN MODEL ===
difference() {
  union() {
    // the top
    base(base_w, base_d, base_th);

    //case main wall
    translate([0, 0, base_th]) {
      wall(base_w, base_d, wall_h, wall_th);
    }

    // case mating lip
    translate([0, 0, base_th + wall_h]) {
      wall(base_w, base_d, lip_h, lip_th);
    }

    // case inner mating lip
    translate([il_inset, il_inset, base_th + wall_h]) {
      wall(il_w, il_d, il_h, il_th);
    }

    // retaining bump
    translate([bump_x, bump_y, bump_z]){
      sphere(bump_radius);
    }
  }
  {
    translate([base_w, 0,  0]) {
      rotate([0, 0, 45]) {
        cube([base_w*2, base_d*2, wall_h * 2]);
      }
    }
  }
}
