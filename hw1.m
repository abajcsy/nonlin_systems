%% Problem 1

syms x y

M = 3; k = 3;
c = 2; d = 3;

% calculate equilibrium in (x,xdot) and determine stability
b = 1;

upper_arm = ((y-b)-c)^2 + d;
lower_arm = -((y-b)+c)^2 - d;

x0 = [-1 2]; 
[T,x] = ode23('plant', [0 20], x0); 

% show what happens to equilibrium and stability when b=2, b=2.1
b = 2;


b = 2.1;

% 
% % plant.m 
% function [xdot] = plant(t,x)
% if x(2)>=0
% F = 1;
% else
% F = -1;
% end;
% xdot(1) = x(2);
% xdot(2) = x(1) + F;
% xdot = xdot';