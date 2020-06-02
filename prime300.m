disp('The prime number from 1 to 300 are following:')
disp(' ')
for a=1:300
    prime=1;
    for i=2:((a+1)/2)
        if mod((a+1),i)==0
            prime=0;
        end
    end
    if prime==1
        disp(1+a)
    end
end