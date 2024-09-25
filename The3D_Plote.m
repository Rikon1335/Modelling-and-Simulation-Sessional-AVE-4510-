% 3D Plot
% Md. Roknuzzaman Rikon
% 26-9-2024
% Using mesh for 3D plot

% Creating 3D plot 
[x, y] = meshgrid(-2:0.01:2, -2:0.01:2); % Corrected the range for y
z = x.^2 + y.^2;  % Calculate z values for the 3D surface

% Plot the 3D mesh
mesh(x, y, z); 

% Labeling the axes
xlabel('x');  
ylabel('y');   
zlabel('z');  

% Add title and grid
title('3D Plot');   
grid on;
