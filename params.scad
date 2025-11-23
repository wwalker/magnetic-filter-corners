// === Parameters ===
base_w  = 60;
base_d  = 60;
base_h  = 10;
base_th = 2;

wall_w  = base_w;
wall_d  = base_d;
wall_h  = 10;
wall_th = 2;

top_w  = base_w;
top_d  = base_d;
top_h  = 12;
top_th = 2;

fwi = wall_d - wall_th;
nwi = wall_th;
lwi = wall_th;
rwi = wall_w - wall_th;

lip_th    = 1.0;
lip_inset = wall_th - lip_th;
lip_w     = wall_w - 2 * lip_inset;
lip_d     = wall_d - 2 * lip_inset;
lip_h     = 2;
