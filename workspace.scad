
$fn = 85;

module assembly() {
  translate([0, 0, 10]) rotate_extrude(angle=270, convexity=10) translate([40, 0]) circle(10);
}

assembly();
