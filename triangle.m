function triangle(th1,th2,th3)
% This programe shows the the triangle is valid or not when three angles
% are entered
if (th1+th2+th3==180)
    fprintf('The triangle is valid for these angles\n\n')
else
    fprintf('These angles are not valid for triangle\n\n')
end
end