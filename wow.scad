$fn = 100;

// module rounded_box(width, height, camfer) {
//   hull() {
//     translate([width, 0, 0])    { cylinder(height, camfer, camfer); }
//     translate([0, width, 0])    { cylinder(height, camfer, camfer); }
//     translate([width, width, 0])  { cylinder(height, camfer, camfer); }
//     translate([0, 0, 0])      { cylinder(height, camfer, camfer); }
//   }
// }

// module chasis(h, l, w) {
//   difference() {
//     rounded_box(width = w, height = h, camfer = 2.5);
//     color("blue") rounded_box(width = w, height = h, camfer = 1.25);
//   }
// }

// chasis(20, 60);

xxx = 12.5;

module ball() { sphere(r=10); }
module box()  { cube([xxx,xxx,xxx], center=true); }

intersection() {
  ball();
  box();
}

translate([xxx*2, 0, 0]) {
  union() {
    ball();
    box();
  }
}

translate([xxx*4, 0, 0]) {
  difference() {
    ball();
    box();
  }
}
