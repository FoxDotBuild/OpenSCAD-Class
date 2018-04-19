$fn = 30;

module rounded_box(width, height, camfer) {
  hull() {
    translate([width, 0, 0])     { cylinder(height, camfer, camfer); }
    translate([0, width, 0])     { cylinder(height, camfer, camfer); }
    translate([width, width, 0]) { cylinder(height, camfer, camfer); }
    translate([0, 0, 0])         { cylinder(height, camfer, camfer); }
  }
}
module chasis(a, b) {
  difference() {
    rounded_box(a, b, camfer = 2.5);
    color("blue") rounded_box(a, b, camfer = 1.25);
  }
}

chasis(80, 80);
