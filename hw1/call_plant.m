%% Problem 1
% Part 1: Stiction is modeled as quadratic

global b
hold on

x0 = [0 0]; 
x0_2 = [-1 1]; 

plot(4/3,0,'ko','MarkerSize',5)

b = 1
[T,x]=ode23('plant', [0 20], x0);
plot(x(:,1),x(:,2),'b-') 

[T,x]=ode23('plant', [0 20], x0_2);
plot(x(:,1),x(:,2),'b--')

b = 2
[T,x]=ode23('plant', [0 20], x0);
plot(x(:,1),x(:,2),'r-') 

[T,x]=ode23('plant', [0 20], x0_2);
plot(x(:,1),x(:,2),'r--')

b = 2.1
[T,x]=ode23('plant', [0 20], x0);
plot(x(:,1),x(:,2),'g-') 

[T,x]=ode23('plant', [0 20], x0_2);
plot(x(:,1),x(:,2),'g--') 

% plotting functions
axis([-1.5 5 -2.5 2.5])
xlabel('x1'); ylabel('x2');
legend('x_e = (4/3,0)','b = 1, x0 = [0 0]','b = 1, x0 = [-1 1]','b = 2, x0 = [0 0]','b = 2, x0 = [-1 1]','b = 2.1, x0 = [0 0]', 'b = 2.1, x0 = [-1 1]');
title('Problem 1: Plots with Quadratic Stiction');

%Part 2: Stiction is a piecewise linear function
hold off
figure
hold on

x0 = [0 0]; 
x0_2 = [-1 1]; 
x0_3 = [-1 -1];
x0_4 = [1 1]; 

plot(-2,0,'ko','MarkerSize',5)

b = 1
[T,x]=ode23('plant2', [0 20], x0);
plot(x(:,1),x(:,2),'b-') 

[T,x]=ode23('plant2', [0 20], x0_2);
plot(x(:,1),x(:,2),'r-')

[T,x]=ode23('plant2', [0 20], x0_3);
plot(x(:,1),x(:,2),'g-')

[T,x]=ode23('plant2', [0 20], x0_4);
plot(x(:,1),x(:,2),'k--')

% plotting functions
xlabel('x1'); ylabel('x2');
legend('x_e = (-2,0)','x0 = [0 0]','x0 = [-1 1]','x0 = [-1 -1]','x0 = [1 1]');
title('Problem 1: Plots with Piecewise Linear Stiction, b = 1');