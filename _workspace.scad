$fn = 100;

module pear(scale_factor = 50) {
  hull() {
    translate([0, 0, -(scale_factor*2)]) sphere(scale_factor * 2);
    sphere(scale_factor);
  }
}

pear(2);
translate([0, 9, 0]) pear(4);
translate([0, 24, 0]) pear(6);
