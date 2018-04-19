$fn = 30;

module hollow_sphere(radius, shell_percentage) {
  difference() {
    scale([shell_percentage, shell_percentage, shell_percentage]) sphere(radius);
    sphere(radius);
  }
}


module dome(radius) {
  difference() {
    scale([1,1,0.5]) hollow_sphere(radius, 1.05, center = true);
    rotate([0, 180, 0]) cylinder(radius*2, radius*2, radius*2);
  }
}

