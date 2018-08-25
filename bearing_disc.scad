include <parameters.scad>
include <bearing_holder.scad>

/*
translate([0,-shaft_center,0])
bearing_holder();
*/

module bearing_disc(){
    translate([0, 0, holder_height+bearing_pit_height+disc_height/2])
    union(){
        difference(){
            union(){
                //lock high 1
                translate([0,hole_width/2,0])
                cube([20,4,disc_height+1]);
                //lock low 1
                hull(){
                    translate([0,-hole_width*1.5,0])
                    cube([20,0.1,disc_height-1]);
                    translate([0,-hole_width/2,0])
                    cube([20,0.1,disc_height]);
                }
                //lock high 2
                rotate([0,0,180])
                translate([0,hole_width/2,0])
                cube([20,4,disc_height+1]);
                //lock low 2
                rotate([0,0,180])
                hull(){
                    translate([0,-hole_width*1.5,0])
                    cube([20,0.1,disc_height-1]);
                    translate([0,-hole_width/2,0])
                    cube([20,0.1,disc_height]);
                }
                //disc
                cylinder(disc_height,disc_radius,disc_radius, true);
            }
            //lock hole
            cube([hole_width,hole_length,disc_height], true);
             //shaft hole
            cylinder(disc_height+4, shaft_raidus, shaft_raidus, true);
        }
    }
}