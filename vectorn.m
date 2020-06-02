function vectorn(n)
for i=1:n
    v(i)=input('enter a vector: ');
    if v>0 & v<3
        u(i)=2*v(i);
    elseif v<0 & v>-5
        u(i)=3*v(i);
    else
        u(i)=v(i)+1;
    end
end
fprintf('%i',u)
end