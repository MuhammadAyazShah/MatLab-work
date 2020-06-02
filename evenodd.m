function evenodd(x)
% This programe shows that the number is even or odd
y=rem(x,2);
if y==0
    fprintf('This number is even\n\n')
end
if y==1
    fprintf('This number is odd\n\n')
end
end