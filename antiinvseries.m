function antiinvseries(x)
for i=x:-1:1
    for a=x:-1:i
        fprintf('\t%d',a)
    end
    fprintf('\n')
end
end