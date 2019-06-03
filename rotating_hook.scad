use<path_extrude.scad>
gap = 0.5;
height=18; //30
width=20; //25
difference(){
  foot();
  holes();
    //cube([25,25,50]);
}
rotate([0,0,0])
  translate([-17,0,45])
    hook();
rotate([0,0,120])
  translate([-17,0,45])
    hook();
rotate([0,0,240])
  translate([-17,0,45])
    hook();

translate([0,0,20])
cylinder(h=28, r1=8, r2=4, center=false);

module holes(){
  translate([16,0,0])
    hole();
  translate([cos(120)*16, sin(120)*16,0])
    hole();
  translate([cos(240)*16, sin(240)*16,0])
    hole();
    
}

module foot(){
rotate_extrude(angle = 360, convexity = 10){
  polygon(points=[[0,0],[width,0],[width,6],[14
  ,6], [10,15], [10,height], [8,height], [5,2+tan(55)*6 + tan(55)*1],[6,2+tan(55)*6], [0,2]]);
}
rotate_extrude(angle = 360, convexity = 10){
  polygon(points=[[0,2+gap],[6-gap,2+tan(55)*(6)],  [5-gap,2+tan(55)*(6) + tan(55)*1], [8-gap,height+gap], [8,height+gap],[8,height+2], [0,height+2]]);
}
}


module hole(){
    cylinder(h=6, r=1.5); 
    translate([0,0,4])
      cylinder(h=2, r1=1.5, r2=3);
    translate([0,0,6])
      cylinder(h=15, r=3.5);
}

module hook(){
    
    rotate([90,0,0]){
    
    rotate_extrude(angle= 180, convexity = 10){
        translate([14,0,0])
        circle(3);    
    }
    
    translate([14,-12.5,0])
    rotate([90,90,0])
    linear_extrude(height = 25, center = true, convexity = 10)
      circle(r = 3);
   }
   translate([-14,0,0])
   sphere(r=3);
    
}




//currently: base diameter 36mm
//diameter stem 10mm
//max estension hook: 25mm
//diameter hook: 6mm
//height base 6mm