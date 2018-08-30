include <../parameters.scad>

//parameters

//base
back_length = 10;
outer_width = 20;
outer_length = 36+back_length;
inner_width = 12;
inner_length = 25;
base_height = 6;
front_offset = round((outer_length-inner_length)/2)-4;

//shaft
tier2_height = 30;

//tier3
tier3_length = 10;
tier3_height = tier2_height+servo_height+disc_height+ex_height;

//tier4
tier4_offset = servo_height+tier2_height+disc_height/2-base_height/2+ex_height;
tier4_height = 5;
tier4_length = 23;

//shaft
pan_shaft_height = tier2_height+disc_height/2-shaft_grip_height-2;
pan_shaft_radius = 4;
pan_shaft_lock_width = 2;
pan_shaft_lock_length = 18;
pan_shaft_lock_height = 2;

