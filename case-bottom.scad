// Parametric Enclosure – Bottom Case
// Units: millimeters

use <mods-case.scad>
include <params.scad>
// === MAIN MODEL ===
difference() {
  union() {
    // the base
    base(base_w, base_d, base_th);

    //case main wall
    translate([0, 0, base_th]) {
      wall(wall_w, wall_d, wall_h, wall_th);
    }

    // case mating lip
    translate([lip_inset, lip_inset, base_th + wall_h]) {
      wall(lip_w, lip_d, lip_h, lip_th);
    }
  
    // dividers
    translate([0, spacing_d, base_th]) {
      cube([base_w, divider_d, wall_h]);
    }
    translate([0, spacing_d*2, base_th]) {
      cube([base_w, divider_d, wall_h]);
    }
    translate([0, spacing_d*3, base_th]) {
      cube([base_w, divider_d, wall_h]);
    }
    translate([0, spacing_d*4, base_th]) {
      cube([base_w, divider_d, wall_h]);
    }
    translate([0, spacing_d*5, base_th]) {
      cube([base_w, divider_d, wall_h]);
    }
    translate([0, spacing_d*6, base_th]) {
      cube([base_w, divider_d, wall_h]);
    }
    translate([0, spacing_d*7, base_th]) {
      cube([base_w, divider_d, wall_h]);
    }
    translate([0, spacing_d*8, base_th]) {
      cube([base_w, divider_d, wall_h]);
    }
    translate([0, spacing_d*9, base_th]) {
      cube([base_w, divider_d, wall_h]);
    }
  }
}
