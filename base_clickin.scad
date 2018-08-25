include <servo.scad>
include <parameters.scad>

module tower_base(){
    union(){
        //back tower
        union(){
            translate([0,back_offset,(back_component_height/2)-base_height/2])
            union(){
                //back holes
                translate([0,0,back_component_height/2+top_component_height/2])
                difference(){
                    cube([top_component_width,back_component_length,top_component_height], true);
                    back_holes();
                    
                }
                //back component
                cube([outer_width,back_component_length,back_component_height], true);
                //triangle supports
                hull(){
                    translate([0,0,back_component_height/2])
                    cube([top_component_width,back_component_length,0.1], true);
                    translate([0,0,back_component_height/2-10])
                    cube([outer_width,back_component_length,0.1], true);
                }
            }
        }
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
    }
}

//tower_base();
//translate([0,-front_offset,0])
//  %servo();