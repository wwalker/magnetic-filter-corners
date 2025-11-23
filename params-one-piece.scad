// === Parameters ===
// Inner dimensions
inner_w  = 75;
inner_d  = 75;
inner_h  = 20;

wall_th = 2;

inner_dimensions = [inner_w, inner_d, inner_h];
outer_dimensions = [inner_w + 2*wall_th, inner_d + 2*wall_th, inner_h + 2*wall_th];

bump_radius = 2;
bump_x = inner_w/2 - bump_radius;
bump_y = inner_d/2 - bump_radius;
bump_z = 0;
