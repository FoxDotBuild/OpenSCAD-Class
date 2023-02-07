$fn = 111;
size = 10;
// hull() {
  translate([0, 0, size]) color("blue") sphere(r = size);
  translate([0, size, 0]) color("red") sphere(r = size);
  translate([size, 0, 0]) color("green") sphere(r = size);
  translate([-size, 0, 0]) color("purple") sphere(r = size);
  translate([0, -size, 0]) color("orange") sphere(r = size);
  translate([0, 0, -size]) color("yellow") sphere(r = size);
// }
