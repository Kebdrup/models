include <parameters.scad>

module ball_bearing(){
    rotate([0,90,0])
    cylinder(ball_bearing_length/2,ball_bearing_height ,true);
    rotate([0,90,180])
    cylinder(ball_bearing_length/2,ball_bearing_height ,true);
}

//%ball_bearing();