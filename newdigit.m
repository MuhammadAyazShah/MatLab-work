function newdigit(x)
% This function shows that the new number by adding 2 of given a 4 digit number
% x is the four-digit number
s=0;
for i=1:4
    a=mod(x,10);
    x=(x-a)/10;
    y=a+2;
    s=s+y*10^(i-1);
end
fprintf('A new number is %d\n\n', s)
end