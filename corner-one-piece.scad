// Parametric Enclosure – Bottom Case
// Units: millimeters

include <params-one-piece.scad>

$fn = 36;

union()
{
  // hollow diagonal half square
  difference()
  {
    // hollow box
    difference()
    {
      {
        translate([-wall_th, -wall_th, -wall_th])
          cube(outer_dimensions);
      }
      {
        cube(inner_dimensions);
      }
    }

    union() // voiding box
    {
      translate([outer_dimensions[0]-wall_th, 0-wall_th, 0-wall_th]){
        rotate([0, 0, 45]){
          cube(outer_dimensions*2);
        }
      }
      translate([outer_dimensions[0]*0.6, -wall_th, -wall_th]){
        cube(outer_dimensions*2);
      }
      translate([-wall_th, outer_dimensions[0]*0.6, -wall_th]){
        cube(outer_dimensions*2);
      }
    }
  }

  // bump
  translate([bump_x, bump_y, 0])
  {
    sphere(r = bump_radius);
  }
}
