# OpenSCAD squircle
The amount of slightly different [squircle](https://en.wikipedia.org/wiki/Squircle) implementations in my different OpenSCAD
projects was getting too damn high, so here's a pretty robust one.

## Installation
Add a git submodule to your project:

```sh
git submodule add https://github.com/mmalecki/openscad-squircle squircle
```

## Usage
```openscad
use <squircle/squircle.scad>;

// Simple usage:
squircle([20, 25], 1, center = true);

// A bit more fancy:
translate([30, 0])
  squircle([20, 25], [0, 5, 7.5, 10], center = true);
```

### API

#### `squricle(size, r, center = false)`
Draws a 2D squircle.

Arguments:
  * `size` - size of the base square
  * `r` (number, list of 4 numbers) - the radius or radii of the corner circles (0 for no corner circle)
  * `center` (boolean) - whether to center the squircle
