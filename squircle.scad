module squircle_quadrant (size, r) {
  translate([size[0] / 4, size[1] / 4]) {
    if (r != 0) {
      translate([size[0] / 4 - r, size[1] / 4 - r]) circle(r = r);
    }
    else
      square([size[0] / 2, size[1] / 2], center = true);
  }
}

// Draws a 2D squircle.
//
// Arguments:
//   * size - size of the base square
//   * r (number, list of 4 numbers) - the radius or radii of the corner circles (0 for no corner circle)
//   * center (boolean) - whether to center the squircle
//
// Usage:
//
//     squircle([50, 50], [0, 5, 10, 15], center = true);
//
module squircle (size, r, center = false) {
  r_l = is_list(r) ? r : [r, r, r, r];
  translate(center ? [0, 0, 0] : [size[0] / 2, size[1] / 2])
    hull () {
      translate([size[0] / 4, size[1] / 4]) {
        if (r_l[0] != 0) {
          translate([size[0] / 4 - r_l[0], size[1] / 4 - r_l[0]])
            circle(r = r_l[0]);
        }
        else
          square([size[0] / 2, size[1] / 2], center = true);
      }

      translate([-size[0] / 4, size[1] / 4]) {
        if (r_l[1] != 0) {
          translate([-size[0] / 4 + r_l[1], size[1] / 4 - r_l[1]])
            circle(r = r_l[1]);
        }
        else
          square([size[0] / 2, size[1] / 2], center = true);
      }

      translate([-size[0] / 4, -size[1] / 4]) {
        if (r_l[2] != 0) {
          translate([-size[0] / 4 + r_l[2], -size[1] / 4 + r_l[2]])
            circle(r = r_l[2]);
        }
        else
          square([size[0] / 2, size[1] / 2], center = true);
      }

      translate([size[0] / 4, -size[1] / 4]) {
        if (r_l[3] != 0) {
          translate([size[0] / 4 - r_l[3], -size[1] / 4 + r_l[3]])
            circle(r = r_l[3]);
        }
        else
          square([size[0] / 2, size[1] / 2], center = true);
      }
    }
};
