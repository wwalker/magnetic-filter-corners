// Parametric Enclosure – Bottom Case
// Units: millimeters

include <params-one-piece.scad>

$fn = 36;

union()
{
  // hollow diagonal half square
  difference()
  {
    difference()
      // hollow box
    {
      {
        translate([-wall_th,-wall_th,-wall_th])
          cube(outer_dimensions);
      }
      {
        cube(inner_dimensions);
      }
    }

    // voiding box
    {
      translate([outer_dimensions[0]-wall_th,0-wall_th,0-wall_th]){
        rotate([0,0,45]){
          cube(outer_dimensions*2);
        }
      }
    }
  }

  // bumps
  translate([bump_x, bump_y, 0])
  {
    sphere(r = bump_radius);
  }
}
