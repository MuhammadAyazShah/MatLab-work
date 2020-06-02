function findprime(n,m)
fprintf('Prime numbers from %i to %i are following:\n\n',n,m)
for a=n:m
    prime=1;
    for i=2:((a+n)/2)
        if mod((a+n),i)==0
            prime=0;
        end
    end
    if prime==1
        disp(a+n)
    end
end