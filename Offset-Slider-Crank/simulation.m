clc;clear all; close all; 
r2 = 50; %crank lenth
r3=80; %coupler length
P1 = [0,0]; 
axis(gca,"equal");
axis([-r2 r2+r3+2 -r2 r2+1]); %defining axis
dt2 = 10; %crank angular velocity
ddt2=0; %crank angular acceleration 
r4=30; %offset
t1 = (pi/180)*0; %thet1
t4 = t1+pi/2; %theta4
for t = 1:500 %time
    delt = t/(100); %defining a deltat 
    t2 = mod((dt2*(delt)),360); % theta 2 = omega2 * deltat
    A=2*(r4*cos(t1)*cos(t4)-r2*cos(t1)*cos(t2)+r4*sin(t1)*sin(t4)-r2*sin(t1)*sin(t2));
    B=(r4^2)+(r2^2)-(r3^2)-2*r2*r4*cos(t2)*cos(t4)-2*r2*r4*sin(t2)*sin(t4);
    r1p=(-A+sqrt(A^2-4*B))/2; %r1
    r1n=(-A-sqrt(A^2-4*B))/2;
    %choosing positive r1
    if(r1p<0) r1=r1n;
    else r1=r1p;
    end
    %finding theta 3
    t3=atan((r1*sin(t1)+r4*sin(t4)-r2*sin(t2))/(r1*cos(t1)+r4*cos(t4)-r2*cos(t2)));
    %crank end coordinates
    P2 = r2*[cos(t2) sin(t2)];
    %coupler end coordinates
    P3 = [r2*cos(t2)+r3*cos(t3) r2*sin(t2)+r3*sin(t3)];
    h=2;
    %finding r1dot and theta3 dot
    A1 = [cos(t1), r3*(sin(t3));sin(t1), -r3*(cos(t3))]; 
    B1 = [-r2*dt2*(sin(t2));r2*dt2*(cos(t2))];
    C1 = inv(A1)*B1;
    dr1 = C1(1);
    dt3 = C1(2);
    %subplot for simulation
    subplot(2,2,[1,2]);
    draw_rectangle([P2(1)/2,P2(2)/2],0,0,r2,5,180/pi*t2,[0 .7 .8]);
    draw_rectangle([(P3(1)-P2(1))/2,(P3(2)-P2(2))/2],P2(1),P2(2),r3,5,180/pi*t3,[1 0 0]);
    w = 30;h = 14;
    square =  rectangle("Position",[P3(1)-w/2, P3(2)-h/2, w, h],'FaceColor',[0 .5 .5]);
    P2_traj = viscircles([0,0],r2,'LineStyle','--','Color','black');
    P1_circ = viscircles(P1,1.2,'Color','black');
    P2_circ = viscircles(P2,1.2,'Color','black');
    P3_circ = viscircles(P3,1.2,'Color','black');
    dt2 = ddt2*delt + dt2;
    pause(0.08);
    delete(P1_circ);
    delete(P2_circ);
    delete(P3_circ);
    delete(square);
    cla(gca); 
    %plotting theta3dot and r1dot
    subplot(2,2,3);
    plot(t,dt3,'r.');
    title("theta3 dot vs. time"); 
    xlabel("time");
    ylabel("angular velocity of coupler");
    hold on;
    subplot(2,2,4);
    plot(t,dr1,'r.');
    title("r1 dot vs. time"); 
    xlabel("time");
    ylabel("r1 dot");
    hold on;
  end
   

