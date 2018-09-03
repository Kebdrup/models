include <../servo.scad>
include <parameters_v2.scad>
include <../bearing_disc.scad>

module pan_fixture(){

    //base
    difference(){
        difference(){
            cube([outer_width,outer_length,base_height], true);
            translate([0,-front_offset,0])
            cube([inner_width,inner_length,base_height], true);
        }
        translate([0,-outer_length/2+2,-2])
        cube([inner_width,4,4], true);
    }
    
    translate([outer_width/2+5/2,outer_length/2-10,tier3_height/2])
    cube([5, 20, tier3_height+base_height], true);

    union(){
        translate([0,outer_length/2-tier3_length/2,tier3_height/2-base_height/2])
        union(){
            //tier3
            cube([outer_width, tier3_length, tier3_height], true);
            translate([0,0,tier3_height/2+tier4_height/2])
            //tier4
            union(){
                translate([0,-tier4_length/2+tier3_length/2,0])
                union(){
                    cube([outer_width,tier4_length,tier4_height], true);
                    //fill in cube 1
                    translate([outer_width/2-1,-tier4_length/2-1,0])
                    cube([2,2,tier4_height], true);
                    //fill in cube 2
                    translate([-outer_width/2+1,-tier4_length/2-1,0])
                    cube([2,2,tier4_height], true);
                }
                //disc
                translate([0,-(outer_length/2-tier3_length/2+front_offset)+shaft_offset,0])
                difference(){
                    cylinder(tier4_height,disc_radius+4,disc_radius+4,true);
                    translate([0,0,-2])
                    cylinder(tier4_height,disc_radius+0.5,disc_radius+0.5,true);
                }
            }
        }
    }
}

