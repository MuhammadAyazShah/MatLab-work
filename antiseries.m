function antiseries(n)
for i=0:n
    for a=1:n-i
        fprintf('\t%d', a)
    end
    fprintf('\n')
end
end