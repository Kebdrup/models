include <parameters.scad>
include <bearing_holder.scad>
include <bearing_disc.scad>
include <base_clickin.scad>
include <hangon_clickin.scad>
include <servo.scad>
include <ball_bearing.scad>


translate([0,0,bearing_delta])
bearing_disc();
translate([0,-shaft_center,0])
bearing_holder();
translate([0,-shaft_center,0])
hangon();

//tower base and servo
rotate([0,180,0])   
translate([0,center_on_shaft,-back_component_height])
union(){
    tower_base();
    translate([0,-front_offset,0])
    servo();
}

translate([shaft_hole_radius+pit_width/2,0,holder_height+wall_height])
ball_bearing();



