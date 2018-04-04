
$fn = 85;

case_h = 10;
case_l = 10;
case_w = 10;
wall_w = 1;
batt_r = 1;
batt_h = 1;
butt_r = 1;
port_r = 1;

module case() {
  difference() {
    cube([case_h, case_l, case_w], center = true);
    cube([
      (case_h - wall_w),
      (case_l - wall_w),
      (case_w - wall_w)
    ], center = true);
    cylinder(r=wall_w*1.1, h=100, center=true);
  }
}
module assembly() {
  case();
}

assembly();
