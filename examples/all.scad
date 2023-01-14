use <../squircle.scad>;

$fn = 50;

// Simple usage:
squircle([ 20, 25 ], 1, center = true);

// A bit more fancy:
translate([ 30, 0 ]) squircle([ 20, 25 ], [ 0, 5, 7.5, 10 ], center = true);
