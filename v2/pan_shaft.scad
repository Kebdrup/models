include <../servo.scad>
include <../shaft_grip.scad>
include <pan_fixture.scad>
include <parameters_v2.scad>


module pan_shaft(){
    difference(){
        union(){
            //shaft
            translate([0,0,pan_shaft_height/2+shaft_grip_height/2])
            cylinder(pan_shaft_height,pan_shaft_radius,pan_shaft_radius, true);

            //trim
            translate([0,0, 2+shaft_grip_height/2])
            cylinder(4,shaft_grip_radius, shaft_grip_radius, true);

            //grip
            shaft_grip();

            //lock
            translate([0,0, shaft_grip_height/2+pan_shaft_height-pan_shaft_lock_height/2])
            cube([pan_shaft_lock_length, pan_shaft_lock_width*1.6,pan_shaft_lock_height], true);
            translate([0,0,inner_width/2+shaft_grip_height/2+4])
            cube([inner_length+8,base_height*2,inner_width+8], true);
        }
            
        //base
        translate([0,0,inner_width/2+shaft_grip_height/2+4])  
        cube([inner_length,base_height+50,inner_width+1], true);
    }
}


pan_shaft();
