//parameters
back_length = 10;
outer_width = 20;
outer_length = 36+back_length;
inner_width = 12;
inner_length = 25;
base_height = 4;
front_offset = round((outer_length-inner_length)/2)-4;
back_component_length = 10;
back_component_height = 30;
back_offset = outer_length/2+back_component_length/2;

union(){
    translate([0,back_offset,(back_component_height/2)-base_height/2])
    cube([outer_width,back_component_length,back_component_height], true);
    difference(){
        cube([outer_width,outer_length,base_height], true);
        translate([0,-front_offset,0])
        cube([inner_width,inner_length,base_height], true);
    }
}