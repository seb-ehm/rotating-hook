gap = 0.5;
height=18; //30
width=20; //25
difference(){
foot();
    translate([0,0,0])
    cube([25,25,50]);
}


module foot(){
rotate_extrude(angle = 360, convexity = 10){
  polygon(points=[[0,0],[width,0],[width,6],[14
  ,6], [10,15], [10,height], [5,height], [5,11],[8,10],[8,7],[5,7], [5,5], [10,4],[10,2], [0,2]]);
}
rotate_extrude(angle = 360, convexity = 10){
  polygon(points=[[0,2+gap],[10-gap,2+gap], [10-gap, 4-gap], [5-gap,5-gap], [5-gap,7+gap], [8-gap,7+gap], [8-gap, 10-gap], [5-gap,11-gap], [5-gap,height+gap], [10,height+gap],[10,height+2], [0,height+2]]);
}
}

//currently: base diameter 36mm
//diameter stem 10mm
//max estension hook: 25mm
//diameter hook: 6mm
//height base 6mm