include <parameters.scad>
include <shaft.scad>

//cylinder(shaft_grip_height, shaft_girth, shaft_girth, true);

module star_shape(factor = 1.8){
    a = 6.5;
    p1x = cos(90)*10;
    p1y = sin(90)*10;
    p2x = cos(45)*10;
    p2y = sin(45)*10;
    p3x = cos(0)*10;
    p3y = sin(0)*10;
    points=[//inside points
            [p1x/factor,p1y/factor],//0
            [p2x/factor,p2y/factor],
            [p3x/factor,p3y/factor],
            [p3x/factor,-p3y/factor],//3
            [p2x/factor,-p2y/factor],
            [p1x/factor,-p1y/factor],//5w
            [-p1x/factor,-p1y/factor],
            [-p2x/factor,-p2y/factor],
            [-p3x/factor,-p3y/factor],
            [-p3x/factor,p3y/factor],
            [-p2x/factor,p2y/factor],
           [-p1x/factor,p1y/factor], //11
            //inside walls
            [5,15],//12
            [15,5],
            [15,-5],
            [5,-15],
            [-5,-15],
            [-15,-5],
            [-15,5],
            [-5,15]//19
            ];
    paths=[[0, 12, 1, 13, 2, 3, 14, 4, 15, 5, 6, 16, 7, 17, 8, 9, 18, 10, 19, 11]];
    polygon(points, paths);
}


module shaft_grip(){
    union(){
        difference(){
        cylinder(shaft_grip_height, 12, 12, true);
            //hole
        cylinder(shaft_grip_height, 8, 8, true);
            //hole
        }
        difference(){
            cylinder(shaft_grip_height, 12, 12, true);
            //hole
            linear_extrude(height=shaft_grip_height, center=true){
                star_shape(5);
            }
        }
    }
}

