use <_hollow_shapes.scad>
$fn = 90;
button_r = 5;

module button(char) {
  x = -(button_r/2);
  translate([0, 0, 0.05]) difference() {
    dome(button_r, center=true);
    translate([x,x,button_r/3]) linear_extrude(height = 2) children();
  }
   dome(button_r, center=true);
}

button() text("R", size=button_r);
