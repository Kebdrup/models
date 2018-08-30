include <parameters.scad>
include <bearing_holder.scad>

/*
translate([0,-shaft_center,0])
bearing_holder();
*/

module bearing_disc(){
    translate([0, 0, 0])
    difference(){
    union(){
        difference(){
            union(){
                //lock high 1
                translate([0,hole_width/2+1,0])
                cube([disc_radius,4,disc_height+1]);
                //lock low 1
                translate([0,-1,0])
                hull(){
                    translate([0,-hole_width*1.5,0])
                    cube([disc_radius,0.1,disc_height-1]);
                    translate([0,-hole_width/2,0])
                    cube([disc_radius,0.1,disc_height]);
                }
                //lock high 2
                rotate([0,0,180])
                translate([0,hole_width/2+1,0])
                cube([disc_radius,4,disc_height+1]);
                //lock low 2
                rotate([0,0,180])
                translate([0,-1,0])
                hull(){
                    translate([0,-hole_width*1.5,0])
                    cube([disc_radius,0.1,disc_height-1]);
                    translate([0,-hole_width/2,0])
                    cube([disc_radius,0.1,disc_height]);
                }
                //disc
                cylinder(disc_height,disc_radius,disc_radius, true);
            }
            //shaft hole
            cylinder(disc_height+10, shaft_raidus, shaft_raidus, true);
        }
    }
    difference(){
        cylinder(10,disc_radius+10,disc_radius+10, true);
        cylinder(10,disc_radius, disc_radius, true);
    }
}
}


