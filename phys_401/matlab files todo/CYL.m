R = .5;
N = 50;
phi = 0;
theta = 30*pi/180;
psi = 0;
tend = 10;
dt = 0.01;
t = 0:dt:tend;
[m,nsteps] = size(t);
A = 1.5;

%choose a constant magnitude of ang vel:
wmag=1.;

phi0 = 0;
theta0 = 30.*pi/180;
psi0 = 0;

w10 = wmag*sin(theta0);
w20 = 0;
w30 = wmag*cos(theta0);

y0 = [w10;w20;w30;phi0;theta0;psi0];

[T,Y] = ode45(@ROTderivs,t,y0);

LissVideo = VideoWriter('LissVid.avi');
FRATE=60;
LissVideo.FrameRate = FRATE;
open(LissVideo); %Open the file for writing images to the file.

for j=1:nsteps
    [x,y,z] = cylinder(R,N);
    theta=Y(j,5);
    psi=Y(j,6);
    Aphi = [1 0 0; 0 cos(theta) -sin(theta); 0 sin(theta) cos(theta)];
    Atheta = [1 0 0; 0 cos(theta) -sin(theta); 0 sin(theta) cos(theta)];
    Apsi = [cos(psi) -sin(psi) 0; sin(psi) cos(psi) 0; 0 0 1];
    AROT = Aphi*Atheta*Apsi;
    for i=1:51
        temp=AROT*[x(1,i);y(1,i);z(1,i)];
        xout(1,i)=temp(1);
        yout(1,i)=temp(2);
        zout(1,i)=temp(3);

        temp=AROT*[x(2,i);y(2,i);z(2,i)];
        xout(2,i)=temp(1);
        yout(2,i)=temp(2);
        zout(2,i)=temp(3);
    end
    surf(xout,yout,zout)
    axis equal
    axis([-A A -A A -A A]);
    frame = getframe;
    writeVideo(LissVideo,frame);
end
close(LissVideo);