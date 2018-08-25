//parameters

//base
back_length = 10;
outer_width = 20;
outer_length = 36+back_length;
inner_width = 12;
inner_length = 25;
base_height = 6;
front_offset = round((outer_length-inner_length)/2)-4;
back_component_length = 10;
back_component_height = 100;
back_offset = outer_length/2+back_component_length/2;
top_component_height = 8;
top_component_width = 40;

//hangon
contact_delta = 50;
hangon_support_length = 8;
hangon_support_delta = 2.5;
hangon_support_distance = (top_component_width/2-round((top_component_width*0.1)/2)-hangon_support_delta);
shaft_center = (-hangon_support_length-((hangon_support_distance+10)/2))-contact_delta;
hangon_base_diameter = hangon_support_distance+30;

//fixture
top_part_diplacement = 8;
leg_width = 2;
clickon_height = 2;

//bearing_pit
shaft_hole_width = hangon_base_diameter/2-5;
holder_width = shaft_hole_width-1;
holder_height = 10;
bearing_pit_width = holder_width+5;
bearing_pit_height = 4;
shaft_hole_radius = holder_width-5;
wall_width = 2;
wall_height = 5;
pit_width = 10;

//bearing_disc
disc_radius = shaft_hole_radius+pit_width;
disc_height = 2;
hole_length = (shaft_hole_radius*2)-2;
hole_width = 4;
shaft_raidus = (hole_length/2)*0.6;

//servo
servo_width = 12;
servo_length = 24;
servo_height = 24;
ex_length = 5;
ex_height = 4;
shaft_radius = 5;
shaft_height = 5;
shaft_offset = -servo_length/2+shaft_radius;

//ball bearings
ball_bearing_length = 8;
ball_bearing_height = 3;

//shaft
shaft_girth = shaft_raidus-(0.5/2);
shaft_pole_height = 60;
shaft_grip_height = 5;
shaft_fitting = 4;
pole_up_trans = back_component_height/2-(servo_height/2+shaft_height/2)+((servo_height+shaft_height)-shaft_pole_height/2)+shaft_fitting;
lock_ex_width = hole_width*0.8;
lock_ex_length = hole_length-0.5;
lock_ex_displacement = -17.6;



//complete 
bearing_delta = 4;
center_on_shaft = front_offset-shaft_offset;
