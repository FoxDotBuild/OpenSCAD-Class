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
