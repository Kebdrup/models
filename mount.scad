include <parameters.scad>
include <fixture.scad>

translate([-10,0,0])
%fixture();

fitting_factor = 0.5;
mount_width = top_part_diplacement*2-(leg_width)-fitting_factor;
mount_height = leg_height-fitting_factor;
mount_length = outer_length;
mount_top_inner_height = 16;
mount_top_outer_height = mount_top_inner_height+8;
mount_top_inner_length = outer_length-5;
mount_top_inner_width = mount_width-5;

translate([0,0,leg_height/2+clickon_height/2])
union(){
    //base
    cube([outer_length,top_part_diplacement*2-(leg_width)-fitting_factor,leg_height-fitting_factor], true);
    //middle
    translate([0,0,mount_height/2+mount_width/2])
    cube([mount_width/2,mount_width,mount_width], true);
    //top
    translate([0,0,mount_height/2+mount_width+mount_top_outer_height/2])
    difference(){
        cube([outer_length,mount_width,mount_top_outer_height], true);
        translate([(outer_length-mount_top_inner_length)/2,0,0])
        cube([mount_top_inner_length,mount_width,mount_top_inner_height], true);
    }
    
}
