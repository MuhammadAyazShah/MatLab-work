function sumfourdigit(x)
% This programe shows that the sum of four digit number.
s=0;
b=x;
for i=1:4
    a=mod(x,10);
    x=(x-a)/10;
    s=s+a;
end
    fprintf('Sum of this %d four digit is %d\n\n', b, s)
end