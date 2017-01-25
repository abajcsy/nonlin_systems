%% Problem 2

global B alpha a b c
hold on

a = 1; b = 3; c = 6; 
alpha = 1;

init = [[3 0]; [1 0]; [0 0]; [2 -5]; [0 -5]; [-2 5]; [-5 5]; [-2 5]; [5 -5]; [4 2]];

B = 0.1;
for i = 1:length(init)
    [T,x]=ode23('jet', [0 20], init(i,:));
    plot(x(:,1),x(:,2)) 
end

xlabel('x'); ylabel('y');
title('Problem 2: Effect of increasing compressor speed B=0.1');

figure
hold on

B = 0.3
for i = 1:length(init)
    [T,x]=ode23('jet', [0 20], init(i,:));
    plot(x(:,1),x(:,2)) 
end

xlabel('x'); ylabel('y');
title('Problem 2: Effect of increasing compressor speed B=0.3');

figure
hold on

B = 1
for i = 1:length(init)
    [T,x]=ode23('jet', [0 20], init(i,:));
    plot(x(:,1),x(:,2)) 
end

xlabel('x'); ylabel('y');
title('Problem 2: Effect of increasing compressor speed B=1');
