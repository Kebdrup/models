include <../servo.scad>
include <parameters_v2.scad>
include <../shaft_grip.scad>
include <pan_fixture.scad>

//shaft
cylinder(tier2_height+disc_height/2-shaft_grip_height,2,2, true);

//grip
