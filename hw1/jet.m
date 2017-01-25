function [xdot] = jet(t,x)
    global B alpha
    
    xdot(1) = B*(C(x(1))-x(2));
    xdot(2) = (1/B)*(x(1)-Finv(x(2),alpha));
    xdot = xdot';
end

function x = Finv(y,alpha)
    if(y >= 0)
        x = alpha*sqrt(y);
    else
        x = -alpha*sqrt(-y);
    end
end

function w = C(x)
    global a b c
    w = -x^3+(3/2)*(b+a)*x^2 -3*a*b*x + (2*c+3*a*b^2-b^3)/2;
end