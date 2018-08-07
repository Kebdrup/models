include <servo.scad>
include <parameters.scad>

//%back_holes();

module hangon(){
    //support
    mirror_copy([1,0,0])translate([hangon_support_distance,-hangon_support_length/2-(contact_delta/2)+5,-(5-(top_component_height*0.5))/2])
    cube([round(top_component_width*0.1),hangon_support_length+contact_delta,top_component_height*0.5], true);

    //base
    translate([0,shaft_center,0])
    difference(){
        cube([hangon_base_diameter,hangon_base_diameter,5], true);
        cylinder(10, hangon_base_diameter/2-5, hangon_base_diameter/2-5, true);
    }
}
