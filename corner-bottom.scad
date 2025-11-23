// Parametric Enclosure – Bottom Case
// Units: millimeters

use <mods-corner.scad>
include <params.scad>

$fn = 50;

// === MAIN MODEL ===
difference() {
  union() {
    // the base
    base(base_w, base_d, base_th);

    //case main wall
    translate([0, 0, base_th]) {
      wall(base_w, base_d, wall_h, wall_th);
    }

    // case mating lip
    translate([lip_inset, lip_inset, base_th + wall_h]) {
      wall(lip_w, lip_d, lip_h, lip_th);
    }

    // retaining bump
    translate([bump_x, bump_y, bump_z]){
      sphere(bump_radius);
    }
  }
  {
    {
      translate([base_w, 0,  -0.1]) {
        rotate([0, 0, 45]) {
          cube([base_w*2, base_d*2, wall_h * 2]);
        }
      }
    }
    translate([base_w*0.6, 0,  0]) {
      cube([base_w*2, base_d*2, wall_h * 2]);
    }
    translate([0, base_w*0.6, 0]) {
      cube([base_w*2, base_d*2, wall_h * 2]);
    }

  }
}
