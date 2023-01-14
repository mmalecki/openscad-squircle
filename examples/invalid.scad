// Squircle don't care, squircle's gonna make it happen.
use <../squircle.scad>;

$fn = 50;

// Simple usage:
squircle([ 20, 25 ], [ 0, 12.5, 0, 1 ], center = true);
// Egregriously wrong:
translate([ 30, 0 ]) squircle([ 20, 25 ], [ 0, 30, 0, 0 ], center = true);
