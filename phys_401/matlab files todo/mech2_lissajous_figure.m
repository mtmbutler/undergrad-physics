clf;

Tmax = 1;

N = 7;
M = 5;

eps = 1/900;

Wx = (N*2*pi/Tmax)*(1-eps);
Ax = 1;
Wy = M*2*pi/Tmax;
Ay = 1;

numTurns = 0.2; % Number of turns to complete in video
frameRate = 60;
hRes = 600;
vRes = 600;

% Verify the following if you care about the plot window displaying in the
% middle of your screen
screenHRes = 1920; % Horizontal resolution of your screen
screenVRes = 1080; % Vertical resolution of your screen

LissajousVideo = VideoWriter('LissajousVideo.avi');
LissajousVideo.FrameRate = frameRate;
open(LissajousVideo);

Nframes = (1/eps)*numTurns;
tplotrange = 0:0.001*Tmax:Tmax;
hFig = figure(1);
set(hFig, 'Position', [(screenHRes-hRes)/2 (screenVRes-vRes)/2 hRes vRes])

for i = 1:Nframes
    t = (i-1)*Tmax + tplotrange;
    x = Ax*cos(Wx*t);
    y = Ay*cos(Wy*t);
    plot(x,y,'lineWidth',2);
    axis equal;
    xlabel('$x$','Interpreter','latex');
    ylabel('$y$','Interpreter','latex');
    grid on;
    
    frame = getframe;
    writeVideo(LissajousVideo,frame);
end

close(LissajousVideo);
    