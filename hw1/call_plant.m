%% Problem 1
% Part 1: Stiction is modeled as quadratic

global b
hold on

% x0 = [0 0]; 
% x0_2 = [-2 2]; 
% x0_3 = [-1 4];

init = [[0 0]; [2 0]; [2.5 0]; [-1 2]; [-2 2]; [-3 2]; [-4 2]; [-1 -3]; [2 -3]; [1 0]];

b = 1;
for i = 1:length(init)
    [T,x]=ode23('plant', [0 20], init(i,:));
    plot(x(:,1),x(:,2)) 
end 

% plotting functions
plot(4/3,0,'ko','MarkerSize',5)
xlabel('x1'); ylabel('x2');
title('Problem 1: Plots of xdot vs. x with Quadratic Stiction, b=1');

figure
hold on

init = [[-2 10]; [-2 7]; [-2 4]; [-2 -2]; [-2 -4]; [-3 -4]; [0 -10]; [2 -10]; [4 -10]; [4 -6]; [2 0]; [4 0]];

b = 2;
for i = 1:length(init)
    [T,x]=ode23('plant', [0 20], init(i,:));
    plot(x(:,1),x(:,2)) 
end

% plotting functions
xlabel('x1'); ylabel('x2');
title('Problem 1: Plots of xdot vs. x with Quadratic Stiction, b=2');

figure
hold on

init = [[0 -4]; [2 -4]; [0 4]; [2 4]; [0 0]; [0.5 0]; [3 0]];

b = 2.1;
for i = 1:length(init)
    [T,x]=ode23('plant', [0 20], init(i,:));
    plot(x(:,1),x(:,2)) 
end

% plotting functions
xlabel('x1'); ylabel('x2');
title('Problem 1: Plots of xdot vs. x with Quadratic Stiction, b=2.1');

%Part 2: Stiction is a piecewise linear function
figure
hold on

init = [[3 0]; [1 0]; [0 0]; [2 -10]; [0 -10]; [-2 10]; [-5 5]; [-2 7]; [6 -10]; [4 2]];

for i = 1:length(init)
    [T,x]=ode23('plant2', [0 20], init(i,:));
    plot(x(:,1),x(:,2)) 
end

% plotting functions
plot(2,0,'ko','MarkerSize',5)
xlabel('x1'); ylabel('x2');
title('Problem 1: Plots of xdot vs. x with Piecewise Linear Stiction, b = 1');