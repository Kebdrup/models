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
back_component_height = 50;
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