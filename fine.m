function fine(x,n)
% This programe shows that the charges of libarary fine for every book returned late
% x is the number of days and n is the number of books
if 1<=x & x<=5
    a=50*n;
    fprintf('The fine of %d day(s) of %d book(s) is %d\n\n', x,n,a)
end
if 6<=x & x<=10
    a=1*n;
    fprintf('The fine of %d day(s) of %d book(s) is %d\n\n', x,n,a)
end
if 10<x & x<=30
    a=100*n;
    fprintf('The fine of %d day(s) of %d book(s) is %d\n\n', x,n,a)
end
if 30<x
    a=100*n;
    fprintf('The fine of %d day(s) of %d book(s) is %d and the membership is cancled because of above 30 days\n\n', x,n,a')
end
end