L=157;
W=115;
THICK=2;

// "bottom" (top) part
difference() {
    translate([0,0,THICK/2])
    cube([L+2*THICK,W+2*THICK,THICK], center=true);
    
    comm_supports_minus();
}

// side walls
translate([0,W/2,0])
difference() {
    translate([-(L-0.5)/2,0,0])
    cube([(L-0.5),THICK,44.5]);
    translate([-L/2+4,THICK+.01,44.5-5])
    rotate([90,0,0])
    cylinder(d1=5,d2=3,h=THICK+.02,$fn=16);
    translate([L/2-4,THICK+.01,44.5-5])
    rotate([90,0,0])
    cylinder(d1=5,d2=3,h=THICK+.02,$fn=16);
}

translate([0,-W/2-THICK,0])
difference() {
    translate([-(L-0.5)/2,0,0])
    cube([(L-0.5),THICK,44.5]);
    translate([-L/2+4,THICK+.0,44.5-5])
    rotate([90,0,0])
    cylinder(d1=3,d2=5,h=THICK+.02,$fn=16);
    translate([L/2-4,THICK+.01,44.5-5])
    rotate([90,0,0])
    cylinder(d1=3,d2=5,h=THICK+.02,$fn=16);
}

comm_supports(); 

module comm_supports() {
translate([-L/2+4,-W/2+4,0])
support();
translate([-L/2+4,W/2-4,0])
support();
translate([L/2-4,-W/2+4,0])
support();
translate([L/2-4,W/2-4,0])
support();
translate([L/4-2,-W/2+4,0])
support();
translate([-L/4+2,-W/2+4,0])
support();
translate([L/4-2,W/2-4,0])
support();
translate([-L/4+2,W/2-4,0])
support();
}

module comm_supports_minus() {
translate([-L/2+4,-W/2+4,0])
cylinder(d=5,h=THICK, $fn=16);
translate([-L/2+4,W/2-4,0])
cylinder(d=5,h=THICK, $fn=16);
translate([L/2-4,-W/2+4,0])
cylinder(d=5,h=THICK, $fn=16);
translate([L/2-4,W/2-4,0])
cylinder(d=5,h=THICK, $fn=16);
translate([L/4-2,-W/2+4,0])
cylinder(d=5,h=THICK, $fn=16);
translate([-L/4+2,-W/2+4,0])
cylinder(d=5,h=THICK, $fn=16);
translate([L/4-2,W/2-4,0])
cylinder(d=5,h=THICK, $fn=16);
translate([-L/4+2,W/2-4,0])
cylinder(d=5,h=THICK, $fn=16);
}


module support() {
    difference() {
        translate([-4,-4])
        cube([8,8,11.8]);
        cylinder(d=5.5,h=40,$fn=32);
    }
    translate([0,0,11.8-THICK])
    difference() {
        cylinder(d=6, h=THICK, $fn=16);
        cylinder(d=3, h=THICK, $fn=16);
    }
}