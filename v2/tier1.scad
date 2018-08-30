include <../servo.scad>
include <parameters_v2.scad>
include <../bearing_disc.scad>
include <pan_fixture.scad>
include <pan_shaft.scad>

pan_fixture();
       
translate([0,-front_offset,0])
union(){
    //servo
    translate([0,0,-base_height/2])
    %servo();
    translate([0,shaft_offset,servo_height+tier2_height+disc_height/2-base_height/2+ex_height+disc_height/2])
    rotate([0,180,0])
    %bearing_disc();
    translate([0,shaft_offset,servo_height+shaft_height])
    //cylinder(tier2_height+disc_height/2,2,2, true);
    pan_shaft();
}   
