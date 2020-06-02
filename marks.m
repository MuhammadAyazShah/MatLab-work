function marks(S1,S2,S3,S4)
% In this program it shows that the student obtained total marks and
% percentage in four subjects.
Tmarks=S1+S2+S3+S4;
P=Tmarks/400*100;
fprintf('The total marks and percentage obtained by student is %i and %2.3f respectively\n', Tmarks, P)
end