//parameters
servo_width = 12;
servo_length = 24;
servo_height = 24;
ex_length = 5;
ex_height = 4;
shaft_radius = 5;
shaft_height = 5;
shaft_offset = -servo_length/2+shaft_radius;

module mirror_copy(vec=[0,1,0]){
    children();
    mirror(vec)children();
}

module back_holes(){
    mirror_copy([1,0,0])translate([top_component_width/2-round((top_component_width*0.1)/2)-3,0,0])
    cube([round(top_component_width*0.15),back_component_length,top_component_height*0.6], true);    
}

module servo(){
    translate([0,0,servo_height/2])
    union(){
        //extrusion
        mirror_copy()
            translate([0,servo_length/2+ex_length/2,(servo_height/2)-ex_height/2])
                cube([servo_width, ex_length, ex_height], true);
        //shaft
        translate([0,shaft_offset,servo_height/2+shaft_height/2])
        cylinder(shaft_height, shaft_radius, shaft_radius, true);
        //base
        cube([servo_width, servo_length, servo_height], true);
    }
}