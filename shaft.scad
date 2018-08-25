include <parameters.scad>
include <bearing_disc.scad>
include <base_clickin.scad>
include <servo.scad>

/*
translate([0,0,bearing_delta])
%bearing_disc();


//tower base and servo
rotate([0,180,0])   
translate([0,center_on_shaft,-back_component_height])
union(){
    tower_base();
    translate([0,-front_offset,0])
    %servo();
}

*/
module shaft(){
    union(){
        translate([0,0,shaft_pole_height/2+shaft_grip_height/2])
        cylinder(shaft_grip_height, shaft_girth, shaft_girth, true);
        //shaft
        cylinder(shaft_pole_height, shaft_girth, shaft_girth, true);
        //lock ex
        translate([0,0,lock_ex_displacement])
        cube([lock_ex_length, lock_ex_width, disc_height], true);
    }
}

/*
translate([0,0,pole_up_trans])
shaft();
*/
