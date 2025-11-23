// === Parameters ===
base_w  = 75;
base_d  = 75;
base_h  = 2;
base_th = 2;

wall_w  = base_w;
wall_d  = base_d;
wall_h  = 9;
wall_th = 3;

top_w  = base_w;
top_d  = base_d;
top_h  = 12;
top_th = 2;

bump_radius = 2;
bump_x = base_w/2 - bump_radius;
bump_y = base_d/2 - bump_radius;
bump_z = base_h;

fwi = wall_d - wall_th;
nwi = wall_th;
lwi = wall_th;
rwi = wall_w - wall_th;

il_th    = 1.0;
il_inset = 2 * il_th;
il_w     = wall_w - 2 * il_inset;
il_d     = wall_d - 2 * il_inset;
il_h     = 2.0;

lip_th    = 0.8;
lip_inset = il_th + 0.1;
lip_w     = wall_w - 2 * lip_th;
lip_d     = wall_d - 2 * lip_th;
lip_h     = 2.0;
