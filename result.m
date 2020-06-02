function result(x)
% Grade(X) X is a percentage or grade of a result.
% This function shows the grade and remarks of remarks.
if 100>=x & x>=90
    fprintf('Grade is A+ and Pass.\n')
end
if 89>=x & x>=85
    fprintf('Grade is A and Pass.\n')
end
if 84>=x & x>=80
    fprintf('Grade is A- and Pass.\n')
end
if 79>=x & x>=76
    fprintf('Grade is B+ and Pass.\n')
end
if 75>=x & x>=73
    fprintf('Grade is B and Pass.\n')
end
if 72>=x & x>=70
    fprintf('Grade is B- and Pass.\n')
end
if 69>=x & x>=66
    fprintf('Grade is C+ and Pass.\n')
end
if 65>=x & x>=63
    fprintf('Grade is C and Pass.\n')
end
if 62>=x & x>=60
    fprintf('Grade is C- and Pass.\n')
end
if 59>=x & x>=56
    fprintf('Grade is D+ and Pass.\n')
end
if 55>=x & x>=53
    fprintf('Grade is D and Pass.\n')
end
if 52>=x & x>=50
    fprintf('Grade is D- and Pass.\n')
end
if 49>=x & x>=46
    fprintf('Grade is E and Pass.\n')
end
if 45>=x
    fprintf('Grade is F and Fail.')
end
end