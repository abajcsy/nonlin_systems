function [xdot] = plant2(t,x)
  
    M = 1; k = 1;
    
    if(x(2) < -1)
        F = 0.5*x(2)-0.5;
    elseif(-1 <= x(2) < 1)
        F = -x(2)-2;
    elseif(1 <= x(2) < 3)
        F = -x(2)+4;
    else % if x(2) >= 3
        F = 0.5*x(2)-0.5;
    end
    
    xdot(1) = x(2);
    xdot(2) = (1/M)*(-k*x(1) - F);
    xdot = xdot';
    