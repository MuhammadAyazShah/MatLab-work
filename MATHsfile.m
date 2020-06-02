% Chapter 3 "Mathematical Operations with Arrays"
% Sample Problem 3-2: Equivalent force system (addition of vectors)
% Three forces are applied to a bracket as shown. Determine the total (equivalent)
% force applied to the bracket.
F1M=400; F2M=500; F3M=700;
Th1=-20; Th2=30; Th3=143;
F1=F1M*[cosd(Th1) sind(Th1)]
F2=F2M*[cosd(Th2) sind(Th2)]
F3=F3M*[cosd(Th3) sind(Th3)]
Ftot=F1+F2+F3
FtotM=sqrt(Ftot(1)^2+Ftot(2)^2)
Th=atand(Ftot(2)/Ftot(1))

%Sample Problem 3-3: Friction experiment (element-by-element calculations)
% The coefficient of friction, ?, can be determined in an experiment by measuring
% the force F required to move a mass m. When F is measured and m is known, the
% coefficient of friction can be calculated by:
% mu=F/(mg) (g = 9.81 m/s2).
% Results from measuring F in six tests are given in the table below. Determine the
% coefficient of friction in each test, and the average from all tests.
% Test #      1    2    3  4   5   6
% Mass m(kg)  2    4    5 10  20  50
% Force F(N) 12.5 23.5 30 61 117 294
m=[2 4 5 10 20 50];
F=[12.5 23.5 30 61 117 294];
g=9.81;
mu=F./(m*g)
mu_ave=mean(mu)

% Sample Problem 3-4: Electrical resistive network analysis (solving a system of linear equations)
% The electrical circuit shown to the right consists of resistors and voltage
% sources. Determine the current in each resistor using the mesh current method
% which is based on Kirchhoff?s voltage law.
% V1=20V V2=12V V3=40V
% R1=18ohm R2=10ohm R3=16ohm R4=6ohm R5=15ohm R6=8ohm R7=12ohm R8=14ohm
V1=20; V2=12;  V3=40;
R1=18; R2=10;  R3=16; R4=6;
R5=15; R6=8;  R7=12; R8=14;
A=[-(R1+R2+R3) R2 R3 0
R2 -(R2+R4+R5+R7) R4 R7
R3 R4 -(R3+R4+R6) R6
0 R7 R6 -(R6+R7+R8)]
B=[-V1; 0;  V2; -V3]
I=A\B
% A table with the value of  the current in each resistor:
RI=[1 abs(I(1))
2 abs(I(1)-I(2))
3 abs(I(1)-I(3))
4 abs(I(2)-I(3))
5 abs(I(2))
6 abs(I(3)-I(4))
7 abs(I(2)-I(4))
8 abs(I(4))]

% Sample Problem 3-5:Motion of two particlesA train and a car are approaching 
% a road crossing. At t = 0 the train is 400 ft. south of the crossing traveling
% north at a constant speed of 54 mi/h. At the same time the car is 200 ft. west
% of the crossing traveling east at a speed of 28 mi/h and accelerating at 4ft/s2.
% Determine the positions of the train and the car, the distance between them, and
% the speed of the train relative to the car every second for the next 10 seconds.
% To show the results, create an matrix in which each row has the time in the first
% column and the train position, car position, distance between the train and the
% car, car speed, and the speed of the train relative to the car, in the next five
% columns, respectively.
v0train=54*5280/3600; v0car=28*5280/3600; acar=4;
t=[0:10];
y=-400+v0train*t;
x=-200+v0car*t+0.5*acar*t.^2;
d=sqrt(x.^2+y.^2);
vcar=v0car+acar*t;
speed_trainRcar=sqrt(vcar.^2+v0train^2);
table=[t' y' x' d' vcar' speed_trainRcar']

% QUESTION #1: For the function y=((2x^2-5x+4)^3)/x^2, calculate the value of y 
% for the following values of x: -2,-1,0,1,2,3,4,5 using element-by-element
% operations.
x=[-2:5]
y=((2*x.^2-5*x+4).^3)./x.^2

% QUESTION #2: For the function =5sqrt(t)-(t+2)^2/(0.5(t+1))+8, calculate 
% the value of y for the following values of t: 0,1,2,3,4,5,6,7,8 using 
% element-by-element operations.
t=[0:8]
y=5*sqrt(t)-(t+2).^2./(0.5*(t+1))+8

% QUESTION #3: A ball that is dropped on the floor bounces back up many times,
% reaching a lower height after each bounce.When the ball impacts the floor
% its rebound velocity is 0.85 times the impact velocity. The velocity v that
% a ball hits the floor after being dropped from a height h is given by v=sqrt(2gh),
% where g=9.81 m/s2 is the acceleration of the Earth. The maximum height hmax
% that a ball reaches is given by h(max)=v^2/2g , where v is the upward velocity
% after impact. Consider a ball that is dropped from a height of 2m. Determine
% the height the ball reaches after the first 8 bounces. (Calculate the velocity
% of the ball when it hit the floor for the first time. Derive a formula for 
% h(max) as a function of the bounce number. Then create a vector n=1,2,...,8
% and use the formula (use element-by element operations) to calculate a vector
% with the values of hmax for each n.)
h=2; g=9.81;
v=sqrt(2*g*h)
n=0:8
hmax=((0.85*v)^2/(2*g)).^n
table=[n' hmax']

% QUESTION #4: If a basketball is dropped down from a helicopter, its velocity
% as a function of time v(t) can be modeled by the equation:
% v(t)=sqrt(2mg/pACd)(1-exp(-sqrt(pgCdA/2m*t)))
% where g=9.81m/s^2 is the gravitation of the Earth, Cd=0.5 is the drag coefficient,
% p=1.2kg/m^3 is the density of air, m=0.624kg is the mass of the basketball,
% and A=pir^2 is the projected area of the ball ( r=0.117m is the radius).
% Determine the velocity of the basketball for t = 0, 1, 2, 3, 4, 5, 6, 7, 8, 9,
% and 10 s. Note that initially the velocity increases rapidly, but then due to the
% resistance of the air, the velocity increases more gradually. Eventually the
% velocity approaches a limit that is called the terminal velocity.
g=9.81; Cd=0.5; p=1.2; m=0.624; r=0.117; A=pi*r^2;
t=[0:10]
vt=sqrt((2*m*g)/(p*A*Cd))*(1-exp(-sqrt((p*g*Cd*A)/(2*m))*t))
table=[t' vt']

% QUESTION #5: The length |u| (magnitude) of a vector u=xi+yj+zk is given by 
% |u|=sqrt(x^2+y^2+z^2). Given the vector u=14i+25j-10k, determine its length two ways:
% Question #5(a): Define the vector in MATLAB, and then write a mathematical expression
% that uses the components of the vector.
ua=[14 25 -10]
uaM=sqrt(ua(1)^2+ua(2)^2+ua(3)^2)
% Question #5(b): Define the vector in MATLAB, then use element-by-element operation to
% create a new vector with elements that are the square of the original vector.
% Then use MATLAB built-in functions sum and sqrt to calculate the length.
% All of these can be written in one command.
ub=[14 25 -10]
ubM=sqrt(sum(ub.^2))

% QUESTION #6: The position as a function of time (x(t), y(t)) of a projectile
% fired with a speed of "vo" at an angle "theta" is given by:
% xt=vocos(th)*t  yt=vosin(th)*t-1/2gt^2
% where g=9.81m/s^2 is the gravitation of the Earth. The distance r to the
% projectile at time t can be calculated by rt=sqrt(xt^2+yt^2) . Consider the
% case where vo=100m/s and th=79degree . Determine the distance r to the projectile
% for t=0,2,4,...,20s.
g=9.81; vo=100; th=79;
t=[0:2:20]
xt=vo*cosd(th)*t
yt=vo*sind(th)*t-1/2*g*t.^2
rt=sqrt(xt.^2+yt.^2)
table=[t' xt' yt' rt']

% QUESTION #7: Two vectors are given:
% u=4i+9j-5k and v=-3i+6j-7k
% Use MATLAB to calculate the dot product u.v of the vectors in two ways:
% Question #7(a): Define u as a row vector and v as a column vector, and then
% use matrix multiplication.
u=[4 9 -5]; v=[-3; 6; -7];
dota=u*v
% Question #7(b) Use MATLAB built-in function dot.
u=[4 9 -5]; v=[-3 6 -7];
dotb=dot(u,v)

% QUESTION #8: Define x and y as the vectors x = 2, 4, 6, 8, 10 and y = 3, 6, 9, 12, 15.
% Then use them in the following expression to calculate z using element-by-element calculations.
% z=(y/x)^2+(x+y)^((y-x)/x)
x=[2:2:10]
y=[3:3:15]
z=(y./x).^2+(x+y).^((y-x)./x)

% QUESTION #9: Define h and k as scalars h=0.7, and k=8.85, and x, y and z as
% the vectors x=[1,2,3,4,5], y=[2.1,2.0,1.9,1.8,1.7], and z=[2.0,2.5,3.0,3.5,4.0].
% Then use these variables to calculate G using element-by-element calculations
% for the vectors.
% G=(hx+ky)/(x+y)^h+exp(hy/z)/z^(y/z)
h=0.7; k=8.85;
x=[1:5]
y=[2.1:-0.1:1.7]
z=[2.0:0.5:4.0]
G=(h*x+k*y)./(x+y).^h+exp((h*y)./z)./z.^(y./x)

% QUESTION #10: Show that lim x approches to 0 (exp(x)-1)/x=1
% Do this by first creating a vector x that has the elements: 1 0.5 0.1 0.01
% 0.001 0.00001 and 0.0000001. Then, create a new vector y in which each element
% is determined from the elements of x by (exp(x)-1)/x . Compare the elements
% of y with the value 1 (use format long to display the numbers).
x=[1 0.5 0.1 0.01 0.001 0.00001 0.0000001]
format long
y=(exp(x)-1)./x
table=[x' y']

% QUESTION #11: Use MATLAB to show that the sum of the infinite series 
% 4sigme n=0 to inf (-1)^n/(2n+1) converges to pi. Do it by computing the sum for:
% a) n = 100
% b) n = 10,000
% c) n = 1,000,000
% For each part create a vector n in which the first element is 0, the increment is
% 1 and the last term is 100, 10,000, or 1,000,000. Then, use element-by-element
% calculation to create a vector in which the elements are (-1)^n/(2n+1). Finally,
% use MATLAB built-in function sum to add the terms of the series (and multiply
% the sum by 4). Compare the values obtained in parts a, b, and c with the
% value of pi. (Don’t forget to type semicolons at the end of commands that otherwise
% will display large vectors.)
% Question #11(a):
na=[0:100]; va=(-1).^na./(2*na+1);
SUMa=4*sum(va)
% Question #11(b):
nb=[0:10000]; vb=(-1).^nb./(2*nb+1);
SUMb=4*sum(vb)
% Question #11(c):
nc=[0:1000000]; vc=(-1).^nc./(2*nc+1);
SUMc=4*sum(vc)

% QUESTION #12: Use MATLAB to show that the sum of the infinite series
% sigma n=0 to inf 1/((2n+1)(2n+2)) converges to ln(2). Do this by computing the sum for:
% a) n = 50
% b) n = 500
% c) n = 5,000
% For each part create a vector n in which the first element is 0, the increment 
% is 1 and the last term is 50, 500, or 5,000. Then, use element-by-element calculation
% to create a vector in which the elements are 1/((2n+1)(2n+2)). Finally, use the function
% sum to add the terms of the series. Compare the values obtained in parts a, b, and c to ln(2).
% Question #12(a):
na=[0:50]; ua=1./((2*na+1).*(2*na+2));
SUMa=sum(ua)
% Question #12(b):
nb=[0:500]; ub=1./((2*nb+1).*(2*nb+2));
SUMb=sum(ub)
% Question #12(c):
nc=[0:5000]; uc=1./((2*nc+1).*(2*nc+2));
SUMc=sum(uc)

% QUESTION #13: Fisheries commonly estimate the growth of a fish population
% using the von Bertalanffy growth law:
% L=Lmax(1-exp(-K(t+tau)))
% where Lmax is the maximum length, K is a rate constant, and tau is a time constant.
% These constants vary with species of fish. Assume Lmax=50cm, and tau=0.5 years, 
% calculate the length of a fish at 2 years of age for K = 0.25, 0.5, and 0.75 years^-1.
Lmax=50; tau=0.5; ;t=2;
K=[0.25 0.5 0.75];
L=Lmax*(1-exp(-K*(t+tau)))

% QUESTION #14: Create the following three matrices:
A=[5 2 4; 1 7 -3; 6 -10 0]
B=[11 5 -3; 0 -12 4; 2 6 1]
C=[7 14 1; 10 3 -2; 8 -5 9]
% Question #14(a): Calculate A+B and B+A to show that addition of matrices is commutative.
A+B
B+A
% Question #14(b): Calculate A+(B+C) and (A+B)+C to show that addition of matrices is associative.
A+(B+C)
(A+B)+C
% Question #14(c): Calculate 5(A+C) and 5A+5C to show that, when matrices are multiplied
% by a scalar, the multiplication is distributive.
5*(A+C)
5*A+5*C
% Question #14(d): Calculate A*(B+C) and A*B+A*C to show that matrix multiplication is distributive.
A*(B+C)
A*B+A*C

% QUESTION #15: Use the matrices A, B, and C from the previous problem to answer the following:
A=[5 2 4; 1 7 -3; 6 -10 0]
B=[11 5 -3; 0 -12 4; 2 6 1]
C=[7 14 1; 10 3 -2; 8 -5 9]
% Question #15(a): Does A*B=B*A?
A*B
B*C
% A*B does not equal to B*A
% Question #15(b): Does A*(B*C) = (A*B)*C?
A*(B*C)
(A*B)*C
% Yes A*(B*C) does equal to (A*B)*C
%  Question #15(c): Does (A*B)t = Bt*At ? ( t means transpose)
(A*B)'
B'*A'
% Yes (A*B)' does equal to B'*A'
% Question #15(d): Does (A + B)t = At + Bt?
(A+B)'
A'+B'
% Yes (A+B)' does equal to A'+B'

% QUESTION #16: Two projectiles, A and B, are shot at the same instant from the
% same spot. Projectile A is shot at a speed of 680 m/s at an angle of 65degree
% and projectile B is shot at a speed of 780 m/s at an angle of 42degree. Determine
% which projectile will hit the ground first. Then, take the flying time tf of that
% projectile and divide it into ten increments by creating a vector t with 11 equally
% spaced elements (the first element is 0, the last is tf). Calculate the distance
% between the two projectiles at the eleven times in vector t.
format short
g=9.81;
vA=680; thA=65;
vB=780; thB=42;
tA=2*vA*sind(thA)/g
tB=2*vB*sind(thB)/g
tf=tB
t=linspace(0,tf,11);
xA=vA*cosd(thA)*t;
yA=vA*sind(thA)*t-1/2*g*t.^2;
xB=vB*cosd(thB)*t;
yB=vB*sind(thB)*t-1/2*g*t.^2;
r=sqrt((xB-xA).^2+(yB-yA).^2);
table=[t' r']

% QUESTION #17: The mechanical power output p in a contracting muscle is given by:
% p=Tv=(kvTo(1-v/vmax))/(k+v/vmax)
% where T is the muscle tension, v is the shortening velocity (max of vmax),
% To is the isometric tension (i.e. tension at zero velocity) and k is a nondimensional
% constant that ranges between 0.15 and 0.25 for most muscles. The equation
% can be written in nondimensional form:
% p=ku(1-u)/(k+u)
% where p=(Tv)/(Tovmax), and u=v/vmax. A figure with  is shown on the right.
% Question #17(a): Create a vector u ranging from 0 to 1 with increments of 0.05.
u=[0:0.05:1]
% Question #17(b): Using k=0.25, calculate the value of p for each value of u.
k=0.25
p=k*u.*(1-u)./(k+u)
% Question #17(c): Using MATLAB built-in function max, find the maximum value of p.
pmax5=max(p)
% Question #17(d): Repeat the first three steps with increments of 0.01 and calculate
% the percent relative error defined by: E=|(pmax0.01-pmax0.05)/pmax0.05|*100.
ud=[0:0.01:1];
k=0.25;
pd=k*ud.*(1-ud)./(k+ud);
pmax1=max(pd)
E=abs((pmax1-pmax5)/pmax5)*100

% QUESTION #18: Solve the following system of five linear equations:
% 1.5x–2y+z+3u+0.5w=7.5
% 3x+y–z+4u–3w=16
% 2x+6y–3z–u+3w=78
% 5x+2y+4z–2u+6w=71
% –3x+3y+2z+5u+4w=54
A=[1.5 -2 1 3 0.5; 3 1 -1 4 -3; 2 6 -3 -1 3; 5 2 4 -2 6; -3 3 2 5 4]
B=[7.5; 16; 78; 71; 54]
X=A\B

% QUESTION #19: The electrical circuit shown consists of resistors and voltage 
% sources. Determine the current in each resistor, using the mesh current method
% that is based on Kirchhoff?s second voltage law.
% V1=38V, V2=20V, V3=24V,
% R1=15ohm, R2=18ohm, R3=10ohm, R4=9ohm, R5=5ohm, R6=14ohm, R7=8ohm, R8=13ohm.
V1=38; V2=20; V3=24;
R1=15; R2=18; R3=10; R4=9;
R5=5; R6=14; R7=8; R8=13;
R=[-(R6+R7+R8) 0 R7 R6 0
0 -(R1+R2) R2 0 0
R7 R2 -(R2+R3+R4+R7) R3 R4
R6 0 R3 -(R3+R5+R6) R5
0 0 R4 R5 -(R4+R5)]
V=[-V1; V1; V2; 0; -V3]
I=A\B
% A table with the value of  the current in each resistor:
RI=[1 abs(I(2))
2 abs(I(2)-I(3))
3 abs(I(3)-I(4))
4 abs(I(5)-I(3))
5 abs(I(4)-I(5))
6 abs(I(1)-I(4))
7 abs(I(1)-I(3))
8 abs(I(1))]
