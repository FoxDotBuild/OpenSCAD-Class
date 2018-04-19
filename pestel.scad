$fn = 75;

HEIGHT = 15;
RADIUS = 5;
TOROID = 6;

module rod() {
  difference() {
    cylinder(r=RADIUS, h=HEIGHT);
    rotate_extrude() translate([TOROID, TOROID, 0]) circle(r=RADIUS);
  }
  translate([0,0,HEIGHT]) sphere(r=RADIUS);
}

rod();
