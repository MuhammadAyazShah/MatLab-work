function factorial2(n)
% This program show the factorial of any number
% n must be an arry of real non-negative integer
f=1;
for i=1:n
    f=f*i;
    fprintf('%i!=%i\n',i,f)
end
if n==0
    m=1;
    fprintf('%i!=%i\n',n,m)
if n<0
    fprintf('n must be an arry of real non-negative integer\n')
end
disp(' ')
end