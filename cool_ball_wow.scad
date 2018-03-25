$fn = 100;

module button() {
  difference() {
    sphere(10);
    color("red") cube(15, center = true);
  }
}

button();
