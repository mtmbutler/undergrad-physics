%===============================DESCRIPTION===============================%

% This program creates a scatterplot (with connected points), then rotates
% it for a user-defined number of rotations. It then exports the rotation
% as a video (.avi format), with user-defined resolution, framerate and
% duration.

% Author: Miles Moser
% Last edited: November 19, 2016

%=========================USER-DEFINED VARIABLES==========================%

% Define a matrix with two columns, where each row is a point in a scatter
% plot to be rotated:
data = [ 0     8     % This example is a compass rose with labeled North
         1     1.75
         2     2
         1.75  1
         8     0
         1.75 -1
         2    -2
         1    -1.75
         0    -8
        -1    -1.75
        -2    -2
        -1.75 -1
        -8     0
        -1.75  1
        -2     2
        -1     1.75 
         0     8
        -0.4   8.5
        -0.4   7.5
        -0.4   8.5
         0.4   7.5
         0.4   8.5
         0.4   7.5
         0     8
         0    -8
         0     0
         8     0
        -8     0
         0     0
         2     2
        -2    -2
         0     0
         2    -2
        -2     2
         0     0
         1     1.75
        -1    -1.75
         0     0
         1.75  1
        -1.75 -1
         0     0
         1.75 -1
        -1.75  1
         0     0
        -1     1.75
         1    -1.75];

direction = 1; % 1 for clockwise, -1 for counterclockwise
numTurns = 1; % Number of turns to complete in video
duration = 5; % Duration of movie in seconds
frameRate = 60; % 30 is standard, 60 is smooth
                % Few non-CRT monitors display faster than 60 fps
hRes = 600; % Horizontal resolution of movie
vRes = 600; % Vertical resolution of movie
scale = 20; % Side length of graph

% Define RGB color of line (0-255) and line thickness (pt)
red = 33;
green = 112;
blue = 56;
thickness = 1.5;

% Verify the following if you care about the plot window displaying in the
% middle of your screen
screenHRes = 1920; % Horizontal resolution of your screen
screenVRes = 1080; % Vertical resolution of your screen

%=============================PROGRAM BODY================================%

% Initialize movie
movie = VideoWriter('Rotation.avi');
movie.FrameRate = frameRate;
open(movie); % Open movie file for writing

% Define a rotation matrix
theta = (numTurns*2*pi)/(duration*frameRate); % angle of each turn
A = [ cos(theta) -1*direction*sin(theta);
      direction*sin(theta) cos(theta)];

% Define figure and set resolution and screen location
hFig = figure(1);
set(hFig, 'Position', [(screenHRes-hRes)/2 (screenVRes-vRes)/2 hRes vRes])

% For loop where each iteration plots a rotation and writes it as a frame
for frame = 1:(frameRate*duration + 1)
    % Generate plot
    plot(data(:,1),data(:,2),'lineWidth',thickness,'Color', ...
        [red/255,green/255,blue/255]);
    
    % Label axes, set grid and window size
    xlabel({'$x$'}, 'Interpreter','latex','FontSize',20);
    ylabel({'$y$'}, 'Interpreter','latex','FontSize',20,'rot',0);
    grid on;
    axis([-scale/2 scale/2 -scale/2 scale/2]);
    
    % Create frame from plot window and write to video
    f = getframe(gcf);
    writeVideo(movie,f);
    
    % Rotate image and clear graph on next plot
    data = data*A;
    hold off;
end

close(movie); % Close movie file