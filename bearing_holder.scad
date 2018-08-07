include <servo.scad>
include <parameters.scad>
include <hangon_clickin.scad>

%hangon();
shaft_hole_width = hangon_base_diameter/2-5;
holder_width = shaft_hole_width-1;
holder_height = 10;
bearing_pit_width = holder_width+5;
bearing_pit_height = 4;
shaft_hole_radius = holder_width-5;
wall_width = 2;
wall_height = 5;
pit_width = 10;

translate([0,shaft_center,0])
union(){
    difference(){
        //base
        union(){
            //holder
            cylinder(holder_height, holder_width, holder_width, true);
            //bearing pit base
            translate([0,0,holder_height/2+bearing_pit_height/2])
            cylinder(bearing_pit_height, bearing_pit_width, bearing_pit_width, true);
        }
        //shaft hole
        translate([0,0,bearing_pit_height/2])
        cylinder(holder_height+bearing_pit_height, shaft_hole_radius, shaft_hole_radius, true);
    }
}
//bearing pit
translate([0,shaft_center,-(shaft_hole_radius-(holder_height/2+bearing_pit_height))])
rotate_extrude(angle = 360, convexity = 10){
    polygon(points=[[shaft_hole_radius,shaft_hole_radius], [shaft_hole_radius+pit_width, shaft_hole_radius], [shaft_hole_radius+pit_width, shaft_hole_radius+wall_height], [shaft_hole_radius+pit_width-wall_width,shaft_hole_radius+wall_height], [shaft_hole_radius+pit_width-wall_width,shaft_hole_radius+wall_width], [shaft_hole_radius+wall_width,shaft_hole_radius+wall_width], [shaft_hole_radius+wall_width,shaft_hole_radius+wall_height], [shaft_hole_radius,shaft_hole_radius+wall_height]]);
};
