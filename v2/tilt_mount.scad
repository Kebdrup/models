include <../servo.scad>
include <../shaft_grip.scad>
include <pan_fixture.scad>
include <parameters_v2.scad>

top_offset = servo_height+shaft_grip_height/2+shaft_height;
top_extrusion = 20;
camera_mount_width = 5;
camera_mount_height = servo_height+shaft_height+shaft_grip_height;
camera_mount_length = 30;

//grip
translate([0,shaft_offset,top_offset])
%shaft_grip();

//extrusion
translate([0,shaft_offset-shaft_grip_radius-top_extrusion/2+2,top_offset])
cube([10,top_extrusion,shaft_grip_height], true);

//camera
translate([0, shaft_offset-shaft_grip_radius-top_extrusion+2+camera_mount_width/2,top_offset-camera_mount_height/2+shaft_grip_height/2])
cube([camera_mount_length,camera_mount_width,camera_mount_height], true);

//fill cylinder
translate([0,shaft_offset,top_offset+2])
cylinder(2, shaft_grip_radius, shaft_grip_radius, true);

%servo();