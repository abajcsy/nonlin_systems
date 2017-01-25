%% Problem 1
% Part 1: Stiction is modeled as quadratic

global B alpha a b c
hold on

a = 1; b = 3; c = 6; 
alpha = 1;

x0 = [0 0]; 
x0_2 = [0 1];
x0_3 = [-1 0];

B = 0.1;
[T,x]=ode23('jet', [0 20], x0);
plot(x(:,1),x(:,2),'b-') 

[T,x]=ode23('jet', [0 20], x0_2);
plot(x(:,1),x(:,2),'b--') 

[T,x]=ode23('jet', [0 20], x0_3);
plot(x(:,1),x(:,2),'b.') 

B = 0.3
[T,x]=ode23('jet', [0 20], x0);
plot(x(:,1),x(:,2),'r-') 

[T,x]=ode23('jet', [0 20], x0_2);
plot(x(:,1),x(:,2),'r--') 

[T,x]=ode23('jet', [0 20], x0_3);
plot(x(:,1),x(:,2),'r.') 

B = 1
[T,x]=ode23('jet', [0 20], x0);
plot(x(:,1),x(:,2),'g-') 

[T,x]=ode23('jet', [0 20], x0_2);
plot(x(:,1),x(:,2),'g--') 

[T,x]=ode23('jet', [0 20], x0_3);
plot(x(:,1),x(:,2),'g.') 

B = 1.5
[T,x]=ode23('jet', [0 20], x0);
plot(x(:,1),x(:,2),'k-') 

[T,x]=ode23('jet', [0 20], x0_2);
plot(x(:,1),x(:,2),'k--') 

[T,x]=ode23('jet', [0 20], x0_3);
plot(x(:,1),x(:,2),'k.') 

xlabel('x'); ylabel('y');
legend('B = 0.1, x0 = [0 0]', 'B = 0.3, x0 = [0 0]', 'B = 1, x0 = [0 0]');
title('Problem 2: Effect of increasing compressor speed B');
