
$fn = 100;

wall_w = 1;
batt_r = 1;
batt_h = 10;

case_h = batt_h * 1.5;
case_l = (batt_r) * 8;
case_w = (case_l / 2)+(wall_w);

butt_r = 10;
port_r = 1;

// The main cube (hollow)
module chasis() {
  difference() {
    cube([case_l, case_w, case_h], center=true);
    translate([0, 0, wall_w]) {
      cube([(case_l - wall_w), (case_w - wall_w), (case_h - wall_w)], center=true);
    }
  }
}

module battery_case() {
  difference() {
    cylinder(r=(batt_r + (wall_w / 2)), h=batt_h + wall_w, centered=true);
    cylinder(r=batt_r, h=batt_h+(wall_w*1.1), centered=true);
  }
}

module assembly() {
  chasis();
  battery_case();
}

assembly();
