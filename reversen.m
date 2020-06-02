function reversen(x,n)
% This function show the reverse number which is put in the x
% x is argument and n is the number of digit of the given number
s=0;
for i=1:n
    a=mod(x,10);
    x=(x-a)/10;
    y=a*10^(n-i);
    s=s+y;
end
fprintf('%i\n\n',s)
end