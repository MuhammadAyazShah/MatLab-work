function threepoint(x1,y1,x2,y2,x3,y3)
% If 3 points are stright then it satisfie a stright line.
% If we cheak points are fall on stright line then we find its area of
% parallogrm. If the area of parallpgram is equal to zero then points are
% lie or fall on stright line.
% Formula to find area of parallogram:
% A=[x1-x2, y1-y2, 0] and B=[x1-x3, y1-y3, 0] A and B are vectors.
% cross product of A and B
% area of //gram=Magnitude of A x B
vectora=[x1-x2, y1-y2, 0];
vectorb=[x1-x3, y1-y3, 0];
Xprod=cross(vectora,vectorb);
areallgram=sqrt(sum(Xprod.^2));
if areallgram==0
    disp('Points are fall on a stright line')
    disp(' ')
else
    disp('Points are not fall on stright line')
    disp(' ')
end
end