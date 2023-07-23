%Gabriel Lopes Lomeu Reis Oliveira
%07/2023
%Cin UFPE - Stellantis

x=0:pi/100:4*pi;
y1=sin(2*x);
y2=2*cos(2*x);
 
x3=0:0.1:10;
y3=(x3.^2)-(10*x3)+15;
 
plot (x,y1,x,y2,x3,y3);
