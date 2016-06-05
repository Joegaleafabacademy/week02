// globals
co_radius = 20;
co_height= 20;

 
             translate([2, 0 , 2]) rotate([0,90,0]) linear_extrude(r=2, twist = -3200, scale = 1, center = true, slices = 500)
           
            square([2, 3], center = true);
       
       rotate([0,90,0]) translate([-2, 5, 0]) cylinder(r=1.5, h=co_height*8.1, center=true)  ;  
        
         rotate([0,90,0]) translate([-2, -5, 0]) cylinder(r=1.5, h=co_height*8.1, center=true)  ;
            
            
              rotate([0,90, 90]) translate([5, 0 , 0]) linear_extrude(r=2, twist = -3200, scale = 1, center = true, slices = 500)
            square([2, 3], center = true);
       
       rotate([0,90,90]) translate([5, 5, 0]) cylinder(r=1.5, h=co_height*8.1, center=true)  ;  
        
         rotate([0,90,90]) translate([5, -5, 0]) cylinder(r=1.5, h=co_height*8.1, center=true)  ;
            
            
module complexObject()

{
    difference()
    {
        union()
        {
            cube([40,40,co_height], center= true);
            translate([0, 0, 10]) scale([0.3, 0.3, 0.3]) import(file = "d1.dxf")  ; 
            
         
              
           
        }
union()
 {
    for (r=[0:4])
    {
        rotate([0,0,r*360/4])rotate([0,0,45])  translate([co_radius/1.1, 0, 0]) cylinder(r=3, h=co_height*1.1, center=true);
        
             
             translate([2, 0 , 2]) rotate([0,90,0]) cylinder(r= 2.5, h=co_height*8.1, center=true)  ;
       
       rotate([0,90,0]) translate([-2, 5, 0]) cylinder(r= 2.5, h=co_height*8.1, center=true)  ;  
        
         rotate([0,90,0]) translate([-2, -5, 0]) cylinder(r=2.5, h=co_height*8.1, center=true)  ;
            
            
              rotate([0,90, 90]) translate([5, 0 , 0]) cylinder(r=2.5, h=co_height*8.1, center=true)  ;
       
       rotate([0,90,90]) translate([5, 5, 0]) cylinder(r=2.5, h=co_height*8.1, center=true)  ;  
        
         rotate([0,90,90]) translate([5, -5, 0]) cylinder(r=2.5, h=co_height*8.1, center=true)  ;

        
      
        
        
       
        
         
        
        
    }
 }
    }
}

complexObject();