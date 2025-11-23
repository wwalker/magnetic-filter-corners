$fn = 128;

wh = 25.0; // wall-height
wt = 2.0; // wall-thickness
fw = 40.0; // filterwidth
owl = 100.0; // inner-wall-length

iwl = owl - fw; // outer-wall-length

// main

//floor
translate([owl/2,owl/2,wt/2])
difference() {
  cube([owl, owl, wt], center=true);
  translate([fw,fw,0])
    cube([owl, owl, wt], center=true);
}

// Outer wall
  // bottom outerwall
bwox = (owl-wt)/2;
bwoy = -wt/2;
translate([bwox, bwoy, wh/2])
  cube([owl+wt, wt, wh], center=true); // +wt to get the corner

lwox = -wt/2;
lwoy = owl/2;
translate([lwox, lwoy, wh/2])
  cube([wt,owl,wh], center=true);

// Inner wall
  //top wall
twox = fw + iwl/2;
twoy = fw + wt/2;
translate([ twox, twoy, wh/2])
  cube([iwl, wt, wh], center=true);

rwox = fw + wt/2;
rwoy = fw + iwl/2 + wt/2;
translate([ rwox, rwoy, wh/2])
  cube([wt,iwl - wt, wh], center=true);
