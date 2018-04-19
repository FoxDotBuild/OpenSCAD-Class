$fn = 30;
difference() {
  cylinder(r=10, h=100, center=true);
  rotate_extrude() translate([15, 15, 0]) circle(r=10);
}
