include <servo.scad>
include <parameters.scad>

//parameters
clickon_width = outer_width+0.2;
clickon_length = 4;
leg_height = base_height+3.5;
holder_height = 5;
holder_width = 0.1;
holder_base_width = 3;

module fixture(){
    //base
    cube([clickon_length,clickon_width,clickon_height], true);
    //leg 1
    translate([0,clickon_width/2+leg_width/2,1-leg_height/2])
    union(){
        cube([4,leg_width,leg_height], true);
        hull(){
            translate([0,leg_width/2-holder_width/2,-leg_height/2-holder_height/2])
            cube([clickon_length, holder_width, holder_height], true);    
            translate([0,leg_width/2-holder_base_width/2,-leg_height/2])
            cube([clickon_length, holder_base_width, holder_width], true);
        }
    }
    //leg 2
    translate([0,-(clickon_width/2+leg_width/2),1-leg_height/2])
    rotate([0,0,180])
    union(){
        cube([4,leg_width,leg_height], true);
        hull(){
            translate([0,leg_width/2-holder_width/2,-leg_height/2-holder_height/2])
            cube([clickon_length, holder_width, holder_height], true);    
            translate([0,leg_width/2-holder_base_width/2,-leg_height/2])
            cube([clickon_length, holder_base_width, holder_width], true);
        }
    }
    //top part 1
    translate([0,top_part_diplacement,clickon_height/2+leg_height/2])
    rotate([0,180,0])
    union(){
        cube([4,leg_width,leg_height], true);
        hull(){
            translate([0,leg_width/2-holder_width/2,-leg_height/2-holder_height/2])
            cube([clickon_length, holder_width, holder_height], true);    
            translate([0,leg_width/2-holder_base_width/2,-leg_height/2])
            cube([clickon_length, holder_base_width, holder_width], true);
        }
    }
    //top part 2
    translate([0,-top_part_diplacement,clickon_height/2+leg_height/2])
    rotate([0,180,180])
    union(){
        cube([4,leg_width,leg_height], true);
        hull(){
            translate([0,leg_width/2-holder_width/2,-leg_height/2-holder_height/2])
            cube([clickon_length, holder_width, holder_height], true);    
            translate([0,leg_width/2-holder_base_width/2,-leg_height/2])
            cube([clickon_length, holder_base_width, holder_width], true);
        }
    }
}