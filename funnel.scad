
$fn = 85;

wall_diam         = 2;
kone_wd           = 0.15;
kone_ht           = 25;
wall_to_hole_coef = 3;
tube_len          = 5;
module tube() {
  cylinder(tube_len*2);
}

module kone() {
  difference() {
    cylinder(kone_ht, kone_wd,wall_diam * wall_to_hole_coef);
    translate([0,0,wall_diam]) cylinder(kone_ht, kone_wd,wall_diam * wall_to_hole_coef);
  }
}
module assembly() {
  translate([0,0,tube_len * -1.5]) difference() {
    translate([0,0,tube_len]) kone();
    tube();
  }
}

assembly();
