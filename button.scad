$fn = 30;

module button() {
  translate([0,0,-10]) difference() {
    color("red") resize([25,25,0]) translate([0,0,6]) sphere(10);
    color("red") cylinder(r=20, h=25, center = true);
    translate([0,0,16]) color("brown") cylinder(r=4, h=3, center=true);
  }
  color("maroon") translate([0,0,2]) cylinder(r=10, h=1, center = true);
}

 button();
