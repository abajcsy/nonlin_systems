function [xdot] = plant(t,x)
    global b

    M = 3; k = 3;
    c = 2; d = 3;
    
    if(x(2) >= b)
        F = ((x(2)-b)-c)^2 + d;
    else
        F = -((x(2)-b)+c)^2 - d;
    end;
    xdot(1) = x(2);
    xdot(2) = (1/M)*(-k*x(1) - F);
    xdot = xdot';