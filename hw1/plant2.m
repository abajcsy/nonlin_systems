function [xdot] = plant2(t,x)
    global b

    M = 1; k = 1;
    
    if(x(2) < b-2)
        F = 0.5*(x(2)-b)-0.5;
    elseif(b-2 <= x(2) < b)
        F = -(x(2)-b)-2;
    elseif(b <= x(2) < b+2)
        F = -(x(2)-b)+4;
    else % if x(2) >= b+2
        F = 0.5*(x(2)-b)-0.5;
    end
    
    xdot(1) = x(2);
    xdot(2) = (1/M)*(-k*x(1) - F);
    xdot = xdot';