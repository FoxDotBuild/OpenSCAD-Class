# What We're Doing Today

 * Learn how to build 3D models on a computer
 * Learn how to print / cut them on the machines

---

# What Is It?

 * It allows you to TYPE OUT descriptions that are transformed into 3D designs.
 * It is _not_ interactive, and that has advantages.
 * Everything is made from basic shapes and "transforms"
   * Cube, Sphere, Cylinder
   * Union, Difference, Intersection, Hull

---


# Advantages

 * Light Weight
 * Good for versioning and long term projects.
 * "Parametric" - easily customized
   * Example: Keyboard keys with letters.
   * Battery case: http://mytechexperiments.com/blog/openscad-tips-for-creating-reusable-modules/

---


# Disadvantages

 * Higher learning curve
 * Less interactive
 * Some features assume prior programming experience
   * loops
   * variables
   * modules / imports
 * You will forget to add semicolons, I promise.

---


# Cool Examples

 * COOL: https://www.thingiverse.com/thing:46884
 * COOL: https://hackaday.io/project/27631-3d-printing-real-world-keys/log/68517-better-modeling
 * https://twitter.com/MPHtechnology/status/926495481534078976
 * http://www.cyberward.net/blog/tag/openscad/
 * https://www.thingiverse.com/thing:193647
 * https://www.thingiverse.com/thing:44078

---


# Installation

 * Web Version: http://openscad.net/
 * Desktop Version
 * "Advanced" setup with VSCode.

---


# First SCAD: Circle, Sphere, translate, $fn

```
$fn = 100;

translate([0,0,-10]) {
  circle(10);
};

sphere(r=10);

```

---


# Color and Centering

```
$fn = 100;

translate([0,0,-10]) {
  color("blue") {
    circle(10);
  };
};

color("red") {
  sphere(r=10);
};

```

---


# Shorter Example

```
$fn = 100;

translate([0,0,-10]) color("blue") circle(10);

color("red") sphere(r=10);

```

---


# Square / Cube / Cylinder


```

$fn = 100;

color("blue") square(12);
color("red") cube(10);
color("green") cube([8, 16, 24]);

```

---


# Union / Difference / Intersection / Hull

```

$fn = 100;

// Try "hull", "union", "intersection", "difference"
intersection() {
  sphere(10);
  translate([-8, 0, 0]) sphere(10);
}
```

---


# Variables and "Parametric" Design

```

$fn = 100;
scale_factor = 50; // Try changing this.

intersection() {
  sphere(scale_factor);
  translate([-(scale_factor*2), 0, 0]) sphere(scale_factor * 2);
}

```

---


# import("….stl")

 * See `ducky.stl`. Might crash the machine!!! Set `$fn` low!

---


# Modules

```
$fn = 100;

module pear(scale_factor = 50) {
  hull() {
    translate([0, 0, -(scale_factor*2)]) sphere(scale_factor * 2);
    sphere(scale_factor);
  }
}

pear(2);
translate([0, 9, 0]) pear(4);
translate([0, 24, 0]) pear(6);

```

---


# DXF Output: 2D cutting your design

 * Possible to produce 2D designs.
 * Usually DXF files.

---


# STL Output: 3D Printing your Design

 * What is GCode?
 * What is "Slicing"?

---


# Other Resources

 * MCAD Library: https://github.com/openscad/MCAD
 * Watch this: https://www.youtube.com/watch?v=kSqpdPrJAqg

---

# Rotate Extrude

```
rotate_extrude() translate([20, 0, 0]) circle(r = 10);
```

---

# Minkowski Transform

* Think of a Roomba.
```
minkowski() cube([10,10,1]) cylinder(r=2,h=1);
```

---

# Function / include / use

---


# rotate / scale / resize / mirror

---


