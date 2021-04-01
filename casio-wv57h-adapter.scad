$fn=50;

module top(){ 
    difference(){
        hull(){
            cube([10,4.4,0.01],center=true);
            //translate([0,0.5,2.17]){
              //  cube([10,4.4,0.01],center=true);        
            //}
            translate([0,1.25,5]){
                cube([10,2.6,0.01],center=true);
            }
        }
        translate([-10,0.85,5-2.13]){
            rotate([0,90,0]){
                cylinder(d=1.75,h=20);
            }
        }
        
        hull(){
            translate([0,2.5,-0.01]){
                cube([10+1,2,0.01],center=true);
            }
            translate([0,3.5,2]){
                cube([10+1,2,0.01],center=true);
            }
        }
        
    }
}

module bot(){ 
    difference(){
        hull(){
            cube([10*1.02, 4.7*1.1,0.01],center=true); 
            translate([0,0,6])
            cube([10*1.02,3.5*1.1,0.01],center=true);
        }
        translate([-11,0,5-2.13]){
            rotate([0,90,0]){
                //cylinder(d=1.75,h=22);
            }
        }
    }
}

translate([0,10,0]){
    difference(){
    union(){
        translate([0,0,5/2]){
            cube([24.25,4.7*1.1+1,5],center=true);
        }
        difference(){
            for(i=[-1:1:1]){
                mirror([i,0,0]){
                    hull(){
                        translate([-22.5/2,0,5/2]){
                            cube([3,4.7*1.1+1,5],center=true);
                        }
                        translate([-22.5/2-3/2,0,7.5]){
                            rotate([90,0,90]){
                                cylinder(d=4,h=3);
                            }
                        }
                    }
                }
            }
            translate([-35/2,0,7.25])
            rotate([90,0,90]){
                cylinder(d=1.5,h=35);
            }
        }
        
    }
    bot();
    //top();
    cube([16,2.25,5],center=true);
    translate([-16.5/2,0,2.55]){
        rotate([90,0,90]){
            cylinder(d=2.25,h=16.5);
        }
    }
    
    translate([-30/2,0,2.25]){
        rotate([90,0,90]){
        cylinder(d=1.5,h=30);
        }
    }
    
    for(j=[-1:2:1]){
        for(i=[-1:2:1]){
            translate([(24.25/2+2)*i,j*(4.7*1.1+1)/2,10/2-0.1]){
                rotate([0,0,45]){
                    cube([4,4,10],center=true);
                }
            }
        }
    }
    
}
    
}


//bot();



//top();