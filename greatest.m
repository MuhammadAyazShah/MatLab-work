function greatest(x,y,z)
% This programe show the greatest number if three integers are entered
% x, y, and z are any real integer
if z<x & y<x
    fprintf('%i is the greatest number\n',x)
elseif z==y & (x<y & x<z)
    fprintf('%i,%i are equal and greatest number\n',z,y)
end
if x<y & z<y
    fprintf('%i is the greatest number\n',y)
elseif x==z & (y<x & y<z)
    fprintf('%i,%i are equal and greatest number\n',x,z)
end
if x<z & y<z
    fprintf('%i is the greatest number\n',z)
elseif x==y & (z<x & z<y)
    fprintf('%i,%i are the greatest number\n',x,y)
end
if x==y & (y==z & x==z)
    fprintf('No number is greatest all three numbers are equal to %i\n',x)
end
disp(' ')
end