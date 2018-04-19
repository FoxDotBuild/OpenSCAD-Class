
$fn = 30;

module lemon() {
  hull(){
    translate([0,0,10]) sphere(10);
    translate([0,0,25]) sphere(20);
    translate([0,0,40]) sphere(10);
  }
}

lemon();
