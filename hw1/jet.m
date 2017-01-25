function [xdot] = jet(t,x)
    global B alpha
    
    xdot(1) = B*(C(x(1))-x(2));
    xdot(2) = (1/B)*(x(1)-F(x(2),alpha));
    xdot = xdot';
end

function y = F(x,alpha)
    if(x > 0)
        y = x^2/alpha^2;
    elseif(x == 0)
        y = 0;
    else % if x < 0
        y = -(x^2/alpha^2);
    end
end

function w = C(x)
    global a b c
    w = -x^3+(3/2)*(b+a)*x^2 -3*a*b*x + (2*c+3*a*b^2-b^3)/2;
end