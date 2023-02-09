---
marp: true
---

# What is OpenSCAD?

Examples:

 * [3D Printable QR Codes](https://www.thingiverse.com/thing:46884)
 * [3D Printable Lock Keys](https://hackaday.io/project/27631-3d-printing-real-world-keys/log/68517-better-modeling)
 * [An Entire Theme Park](https://twitter.com/MPHtechnology/status/926495481534078976)
 * [Nut/Bolt Framework](https://www.thingiverse.com/thing:193647)
 * [Flexible Coupling](https://www.thingiverse.com/thing:44078)

---
# What We're Doing Today

 * Learn how to build 3D models on a computer
 * Learn how to print / cut them on the machines

---

# Why OpenSCAD

 * Parametric Design: Imagine usecase like keyboards, serial numbers, pipe adapters
 * Version control
 * Text always wins
 * OSS

---
# What Is It?

 * It allows you to TYPE OUT descriptions that are transformed into 3D designs.
 * It is _not_ interactive, and that has advantages.
 * Everything is made from basic shapes and "transforms"
   * Cube, Sphere, Cylinder
   * Union, Difference, Intersection, Hull

---


# Advantages

 * Light Weight - runs in desktop or [browser](https://openscad.cloud/openscad/) 
 * Good for **versioning** and long term projects.
 * "Parametric" - easily customized
   * Example: cutting keys, QR codes, engravings

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


# Installation

 * Web Version: http://openscad.net/
 * CloudSCAD for the browser
 * Desktop Version
 * "Advanced" setup with VSCode.

---


# First SCAD: Circle, Sphere, translate, $fn

```c
$fn = 100; // We will cover "special variabless" later.

translate([0,0,-10]) {
  circle(10);
};

sphere(r=10);

```

---


# Color and Centering

```c
$fn = 100;

translate([0,0,-10]) {
  color("green") {
    circle(10);
  };
};

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

```c
$fn = 100;

translate([0,0,-10]) color("blue") circle(10);

color("red") sphere(r=10);

```

---


# Square / Cube / Cylinder


```c
$fn = 100;

color("blue") square(12);
color("red") cube(10);
color("green") cube([8, 16, 24]);

```

---


# Union / Difference / Intersection / Hull

```c
$fn = 100;

// Try "hull", "union", "intersection", "difference"
intersection() {
  sphere(10);
  translate([-8, 0, 0]) sphere(10);
}
```

---


# Variables and "Parametric" Design

```c
$fn = 100;
scale_factor = 50; // Try changing this.

intersection() {
  sphere(scale_factor);
  translate([-(scale_factor*2), 0, 0]) sphere(scale_factor * 2);
}

```

---

# Special Variables, Part I

| Variable  | Usage                                |
|-----------|--------------------------------------|
| $fa       | minimum angle                        |
| $fs       | minimum size                         |
| $fn       | number of fragments                  |
| $t        | animation step                       |
| $vpr      | viewport rotation angles in degrees  |

---

# Special Variables, Part II

| Variable  | Usage                                |
|-----------|--------------------------------------|
| $vpt      | viewport translation                 |
| $vpd      | viewport camera distance             |
| $vpf      | viewport camera field of view        |
| $children | number of module children            |
| $preview  | true in F5 preview, false for F6     |

---

# Modifier Characters

|Symbol | Usage       |
|-------|-------------|
| #     | debug       |
| %     | transparent |
| *     | disable     |
| !     | show only   |

---
# import("….stl")

 * See `ducky.stl`. Might crash the machine!!! Set `$fn` low!

---


# Modules

```c
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

# DXF Output: Laser Cut Your Design

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

```c
rotate_extrude() translate([20, 0, 0]) circle(r = 10);
```

---

# Minkowski Transform

* Think of a Roomba.

```c
minkowski() cube([10,10,1]) cylinder(r=2,h=1);
```

---

# Function / include / use

---


# rotate / scale / resize / mirror

---

# Resources

 * https://hackaday.com/2014/09/16/a-3d-printed-peristaltic-pump/
 * https://www.wikihouse.cc/
 * https://implicitcad.org/
 * https://openscad.cloud/openscad/
 * https://github.com/DSchroer/openscad-wasm
 
---
