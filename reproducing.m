%% Section V: 3-level Systems
%% Eq. 42
x3 = [0 1 0 ; 1 0 1 ; 0 1 0]; y3 = [0 -1i 0 ; 1i 0 -1i ; 0 1i 0];

LHS = [0 1 0 ; 0 0 1 ; 0 0 0];
RHS = (1/2)*(x3 + 1i*y3);
isequal(LHS, RHS)

%% Eq. 43
x3 = [0 1 0 ; 1 0 1 ; 0 1 0]; y3 = [0 -1i 0 ; 1i 0 -1i ; 0 1i 0];

LHS = [0 0 0 ; 1 0 0 ; 0 1 0];
RHS = (1/2)*(x3 - 1i*y3);
isequal(LHS, RHS)

%% Eq. 44 (Not Working)
x3 = [0 1 0 ; 1 0 1 ; 0 1 0]; y3 = [0 -1i 0 ; 1i 0 -1i ; 0 1i 0]; z3 = [1 0 0 ; 0 0 0 ; 0 0 -1];

LHS = [1 0 0 ; 0 0 0 ; 0 0 0];
RHS = (eye(3) + z3)/2;
isequal(LHS, RHS)

%% Eq. 46 (Not Working)
x3 = [0 1 0 ; 1 0 1 ; 0 1 0]; y3 = [0 -1i 0 ; 1i 0 -1i ; 0 1i 0]; z3 = [1 0 0 ; 0 0 0 ; 0 0 -1];

LHS = [0 0 0 ; 0 0 0 ; 0 0 1];
RHS = (eye(3) - z3)/2;
isequal(LHS, RHS)

%% Eq. 47
gm6 = [0 0 0 ; 0 0 1 ; 0 1 0]; gm7 = [0 0 0 ; 0 0 -1i ; 0 1i 0];

LHS = [0 0 0 ; 0 0 1 ; 0 0 0];
RHS = (gm6 + 1i*gm7)/2;
isequal(LHS, RHS)

%% Eq. 48
gm7 = [0 0 0 ; 0 0 -1i ; 0 1i 0];

LHS = [0 0 0 ; 0 1 0 ; 0 0 1];
RHS = gm7*gm7;
isequal(LHS, RHS)

%% Eq. 49 - 1
gm5 = [0 0 -1i ; 0 0 0 ; 1i 0 0]; gm7 = [0 0 0 ; 0 0 -1i ; 0 1i 0];

LHS = gm7*gm5;
RHS = [0 0 0 ; 1 0 0 ; 0 0 0];
isequal(LHS, RHS)

%% Eq. 49 - 2 (Not Working)
gm3 = [1 0 0 ; 0 -1 0 ; 0 0 0]; gm7 = [0 0 0 ; 0 0 -1i ; 0 1i 0];

LHS = gm3*gm7;
RHS = [0 1 0 ; 0 0 0 ; 0 0 0];
isequal(LHS, RHS)

%% Eq. 49 - 3 (Not Working)
gm1 = [0 1 0 ; 1 0 0 ; 0 0 0]; gm3 = [1 0 0 ; 0 -1 0 ; 0 0 0]; gm7 = [0 0 0 ; 0 0 -1i ; 0 1i 0];

LHS = gm7*gm3 + gm3*gm7;
isequal(LHS, gm1)

%% Eq. 50 - 1
gm1 = [0 1 0 ; 1 0 0 ; 0 0 0]; gm2 = [0 -1i 0 ; 1i 0 0 ; 0 0 0];
gm6 = [0 0 0 ; 0 0 1 ; 0 1 0]; gm7 = [0 0 0 ; 0 0 -1i ; 0 1i 0];

LHS = gm7*gm2;
RHS_1 = [0 0 0 ; 0 0 0 ; -1 0 0];
RHS_2 = -gm6*gm1;

isequal(LHS, RHS_1)
isequal(LHS, RHS_2)

%% Eq. 50 - 2
gm1 = [0 1 0 ; 1 0 0 ; 0 0 0]; gm2 = [0 -1i 0 ; 1i 0 0 ; 0 0 0];
gm6 = [0 0 0 ; 0 0 1 ; 0 1 0]; gm7 = [0 0 0 ; 0 0 -1i ; 0 1i 0];

LHS = gm2*gm7;
RHS_1 = [0 0 -1 ; 0 0 0 ; 0 0 0];
RHS_2 = -gm1*gm6;
isequal(LHS,RHS_1)
isequal(LHS,RHS_2)

%% Eq. 50 - 3
gm2 = [0 -1i 0 ; 1i 0 0 ; 0 0 0]; gm4 = [0 0 1 ; 0 0 0 ; 1 0 0]; gm7 = [0 0 0 ; 0 0 -1i ; 0 1i 0];

LHS = gm7*gm2 + gm2*gm7;
isequal(LHS, -gm4)

%% Eq. 50 - 4
gm1 = [0 1 0 ; 1 0 0 ; 0 0 0]; gm4 = [0 0 1 ; 0 0 0 ; 1 0 0]; gm6 = [0 0 0 ; 0 0 1 ; 0 1 0];

LHS = gm6*gm1 + gm1*gm6;
isequal(LHS, gm4);

%% Eq. 51
gm1 = [0 1 0 ; 1 0 0 ; 0 0 0]; gm5 = [0 0 -1i ; 0 0 0 ; 1i 0 0];

LHS = gm5^2;
RHS_1 = [1 0 0 ; 0 0 0 ; 0 0 1];
RHS_2 = abs(gm1);
isequal(LHS,RHS_1)
isequal(LHS,RHS_2) % Not Working

%% Eq. 52 - 1
gm2 = [0 -1i 0 ; 1i 0 0 ; 0 0 0]; gm5 = [0 0 -1i ; 0 0 0 ; 1i 0 0];

LHS = gm5*gm2;
RHS = [0 0 0 ; 0 0 0 ; 0 1 0];
isequal(LHS, RHS)

%% Eq. 52 - 2 (Not Working)
gm2 = [0 -1i 0 ; 1i 0 0 ; 0 0 0]; gm3 = [1 0 0 ; 0 -1 0 ; 0 0 0]; 

LHS = gm2*gm3;
RHS = [0 0 0 ; 0 0 1 ; 0 0 0];
isequal(LHS, RHS)

%% Eq. 52 - 3 (Not Working)
gm2 = [0 -1i 0 ; 1i 0 0 ; 0 0 0]; gm3 = [1 0 0 ; 0 -1 0 ; 0 0 0]; gm6 = [0 0 0 ; 0 0 1 ; 0 1 0];

LHS = gm3*gm2 + gm2*gm3;
isequal(LHS, gm6)

%% Eq. 53
gm2 = [0 -1i 0 ; 1i 0 0 ; 0 0 0]; gm3 = [1 0 0 ; 0 -1 0 ; 0 0 0]; 

LHS = gm2^2;
isequal(gm2^2, abs(gm3))

%% Section W: 4-Level Systems
gamma1 = [1 0 0 0 ; 0 1 0 0 ; 0 0 -1 0 ; 0 0 0 -1]; gamma2 = [0 0 0 1 ; 0 0 1 0 ; 0 -1 -1 0 ; -1 0 0 0];
gamma3 = [0 0 0 -1i ; 0 0 1i 0 ; 0 1i 0 0 ; -1i 0 0 0]; gamma4 = [0 0 1 0 ; 0 0 0 -1 ; -1 0 0 0 ; 0 1 0 0];
gamma5 = [0 0 1 0 ; 0 0 0 1 ; 1 0 0 0 ; 0 1 0 0];

%% Eq. 56 (Not Working)
x4 = [0 sqrt(3) 0 0 ; sqrt(3) 0 2 0 ; 0 2 0 sqrt(3) ; 0 0 sqrt(3) 0]; 
y4 = [0 -sqrt(3)*i 0 0 ; sqrt(3)*i 0 2 0 ; 0 2 0 -sqrt(3)*i ; 0 0 sqrt(3)*i 0]; 
z4 = [3 0 0 0 ; 0 1 0 0 ; 0 0 -1 0 ; 0 0 0 -3];

LHS = [0 sqrt(3) 0 0 ; 0 0 2 0 ; 0 0 0 sqrt(3) ; 0 0 0 0];
RHS = (x4 + 1i*y4)/2;
isequal(LHS, RHS)

%% Eq. 57 (Not Working)
x4 = [0 sqrt(3) 0 0 ; sqrt(3) 0 2 0 ; 0 2 0 sqrt(3) ; 0 0 sqrt(3) 0]; 
y4 = [0 -sqrt(3)*i 0 0 ; sqrt(3)*i 0 2 0 ; 0 2 0 -sqrt(3)*i ; 0 0 sqrt(3)*i 0]; 
z4 = [3 0 0 0 ; 0 1 0 0 ; 0 0 -1 0 ; 0 0 0 -3];

LHS = [0 0 0 0 ; sqrt(3) 0 0 0 ; 0 2 0 0 ; 0 0 sqrt(3) 0];
RHS = (x4 - 1i*y4)/2;
isequal(LHS, RHS)

%% Eq. 58 (Not Working)
z = [1 0 ; 0 -1];
z1 = kron(kron(eye(1),z),eye(2));
z2 = kron(kron(eye(2),z),eye(1));

LHS = (1/2)*(z2 + z1*z2 + z1 - eye(4));
RHS = [1 0 0 0 ; 0 0 0 0 ; 0 0 0 0 ; 0 0 0 0];
isequal(LHS, RHS)

%% Eq. 62
z = [1 0 ; 0 -1];
z1 = kron(kron(eye(1),z),eye(2));
z2 = kron(kron(eye(2),z),eye(1));
LHS = (1/2)*(eye(4) - z1 + z1*z2 + z2);
RHS = [1 0 0 0 ; 0 -1 0 0 ; 0 0 1 0 ; 0 0 0 1];
isequal(LHS, RHS)

%% Eq. 63
z = [1 0 ; 0 -1];
z1 = kron(kron(eye(1),z),eye(2));
z2 = kron(kron(eye(2),z),eye(1));
LHS = (1/2)*(eye(4) - z2 + z1*z2 + z1);
RHS = [1 0 0 0 ; 0 1 0 0 ; 0 0 -1 0 ; 0 0 0 1];
isequal(LHS, RHS)

%% Eq. 64
zero = [1 ; 0];
one = [0 ; 1];
x = [0 1 ; 1 0]; y = [0 -1i ; 1i 0]; z = [1 0 ; 0 -1];

x1 = kron(kron(eye(1),x),eye(2));
y1 = kron(kron(eye(1),y),eye(2));

x2 = kron(kron(eye(2),x),eye(1));
y2 = kron(kron(eye(2),y),eye(1));

LHS = kron(kron(one,zero),kron(conj(transpose(zero)),conj(transpose(one))));
RHS_1 = [0 0 0 0 ; 0 0 0 0 ; 0 1 0 0 ; 0 0 0 0];
RHS_2 = (1/4)*(x1*x2 - 1i*y1*x2 + 1i*x1*y2 + y1*y2);
isequal(LHS,RHS_1)
isequal(LHS,RHS_2)

%% Eq. 65
zero = [1 ; 0];
one = [0 ; 1];
x = [0 1 ; 1 0]; y = [0 -1i ; 1i 0]; z = [1 0 ; 0 -1];

x1 = kron(kron(eye(1),x),eye(2));
y1 = kron(kron(eye(1),y),eye(2));

x2 = kron(kron(eye(2),x),eye(1));
y2 = kron(kron(eye(2),y),eye(1));

LHS = kron(kron(zero,one),kron(conj(transpose(one)),conj(transpose(zero))));
RHS_1 = [0 0 0 0 ; 0 0 1 0 ; 0 0 0 0 ; 0 0 0 0];
RHS_2 = (1/4)*(x1*x2 - 1i*x1*y2 + 1i*y1*x2 + y1*y2);
isequal(LHS,RHS_1)
isequal(LHS,RHS_2)

%% Eq. 66
x = [0 1 ; 1 0]; y = [0 -1i ; 1i 0]; z = [1 0 ; 0 -1];

x1 = kron(kron(eye(1),x),eye(2));
y1 = kron(kron(eye(1),y),eye(2));
z1 = kron(kron(eye(1),z),eye(2));

x2 = kron(kron(eye(2),x),eye(1));
y2 = kron(kron(eye(2),y),eye(1));
z2 = kron(kron(eye(2),z),eye(1));

LHS = [1 0 0 0 ; 0 1 0 0 ; 0 0 0 1 ; 0 0 1 0];
RHS = (1/2)*(eye(4) + z1 + x2 - z1*x2);
isequal(LHS, RHS)

%% Section X: 5-level systems
%% Eq. 68
z5 = [2 0 0 0 0 ; 0 1 0 0 0 ; 0 0 0 0 0 ; 0 0 0 -1 0 ; 0 0 0 0 -2];
x5 = [0 2 0 0 0 ; 2 0 sqrt(6) 0 0 ; 0 sqrt(6) 0 sqrt(6) 0 ; 0 0 sqrt(6) 0 2 ; 0 0 0 2 0];
y5 = [0 -2i 0 0 0 ; 2i 0 -sqrt(6)*i 0 0 ; 0 sqrt(6)*i 0 -sqrt(6)*i 0 ;  0 0 sqrt(6)*i 0 -2i ; 0 0 0 2i 0];

LHS = [0 2 0 0 0 ; 0 0 sqrt(6) 0 0 ; 0 0 0 sqrt(6) 0 ; 0 0 0 0 2 ; 0 0 0 0 0];
RHS = (x5 + 1i*y5)/2;
isequal(LHS, RHS)

%% Eq. 69
z5 = [2 0 0 0 0 ; 0 1 0 0 0 ; 0 0 0 0 0 ; 0 0 0 -1 0 ; 0 0 0 0 -2];
x5 = [0 2 0 0 0 ; 2 0 sqrt(6) 0 0 ; 0 sqrt(6) 0 sqrt(6) 0 ; 0 0 sqrt(6) 0 2 ; 0 0 0 2 0];
y5 = [0 -2i 0 0 0 ; 2i 0 -sqrt(6)*i 0 0 ; 0 sqrt(6)*i 0 -sqrt(6)*i 0 ;  0 0 sqrt(6)*i 0 -2i ; 0 0 0 2i 0];

LHS = [0 0 0 0 0 ; 2 0 0 0 0 ; 0 sqrt(6) 0 0 0 ; 0 0 sqrt(6) 0 0 ; 0 0 0 2 0];
RHS = (x5 - 1i*y5)/2;
isequal(LHS, RHS)

%% Eq. 75
zero_b = [1 ; 0]; one_b = [0 ; 1];
zero_t = [1 ; 0 ; 0]; one_t = [0 ; 1 ; 0]; two_t = [0 ; 0 ; 1];
x = [0 1 ; 1 0]; y = [0 -1i ; 1i 0];
gm1 = [0 1 0 ; 1 0 0 ; 0 0 0]; gm2 = [0 -1i 0 ; 1i 0 0 ; 0 0 0];

LHS = kron(kron(zero_b,one_t),kron(conj(transpose(one_b)),conj(transpose(zero_t))));
RHS_1 = [0 0 0 0 0 0 ; 0 0 0 1 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0];
RHS_2 = (1/4)*(kron(x,gm1) + 1i*kron(y,gm1) - 1i*kron(x,gm2) + kron(y,gm2));
isequal(LHS, RHS_1)
isequal(LHS, RHS_2)

%% Eq. 76
zero_b = [1 ; 0]; one_b = [0 ; 1];
zero_t = [1 ; 0 ; 0]; one_t = [0 ; 1 ; 0]; two_t = [0 ; 0 ; 1];
x = [0 1 ; 1 0]; y = [0 -1i ; 1i 0];
gm1 = [0 1 0 ; 1 0 0 ; 0 0 0]; gm2 = [0 -1i 0 ; 1i 0 0 ; 0 0 0];

LHS = kron(kron(one_b,zero_t),kron(conj(transpose(zero_b)),conj(transpose(one_t))));
RHS_1 = [0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 1 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0];
RHS_2 = (1/4)*(kron(x,gm1) - 1i*kron(y,gm1) + 1i*kron(x,gm2) + kron(y,gm2));
isequal(LHS,RHS_1)
isequal(LHS,RHS_2)

%% Eq. 77
zero_b = [1 ; 0]; one_b = [0 ; 1];
zero_t = [1 ; 0 ; 0]; one_t = [0 ; 1 ; 0]; two_t = [0 ; 0 ; 1];
x = [0 1 ; 1 0]; y = [0 -1i ; 1i 0];
gm1 = [0 1 0 ; 1 0 0 ; 0 0 0]; gm2 = [0 -1i 0 ; 1i 0 0 ; 0 0 0];

LHS = kron(kron(zero_b,one_t),kron(conj(transpose(one_b)),conj(transpose(zero_t)))) + kron(kron(one_b,zero_t),kron(conj(transpose(zero_b)),conj(transpose(one_t))));
RHS_1 = [0 0 0 0 0 0 ; 0 0 0 1 0 0 ; 0 0 0 0 0 0 ; 0 1 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0];
RHS_2 = (1/2)*(kron(x,gm1) + kron(y,gm2));
isequal(LHS,RHS_1)
isequal(LHS,RHS_2)

%% Eq. 78
zero_b = [1 ; 0]; one_b = [0 ; 1];
zero_t = [1 ; 0 ; 0]; one_t = [0 ; 1 ; 0]; two_t = [0 ; 0 ; 1];
LHS = kron(kron(two_t,zero_b),kron(conj(transpose(zero_t)),conj(transpose(one_b))));
RHS = [0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 1 0 0 0 0 ; 0 0 0 0 0 0];
isequal(LHS, RHS)

%% Eq. 79
zero_b = [1 ; 0]; one_b = [0 ; 1];
zero_t = [1 ; 0 ; 0]; one_t = [0 ; 1 ; 0]; two_t = [0 ; 0 ; 1];
x = [0 1 ; 1 0]; y = [0 -1i ; 1i 0];
gm4 = [0 0 1 ; 0 0 0 ; 1 0 0]; gm5 = [0 0 -1i ; 0 0 0 ; 1i 0 0];

LHS = kron(kron(two_t,zero_b),kron(conj(transpose(zero_t)),conj(transpose(one_b)))) + kron(kron(zero_t,one_b),kron(conj(transpose(two_t)),conj(transpose(zero_b))));
RHS_1 = [0 0 0 0 0 0 ; 0 0 0 0 1 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 1 0 0 0 0 ; 0 0 0 0 0 0];
RHS_2 = (1/2)*(kron(gm5,y) + kron(gm4,x));
isequal(LHS,RHS_1)
isequal(LHS,RHS_2)

%% Eq. 80
zero_b = [1 ; 0]; one_b = [0 ; 1];
zero_t = [1 ; 0 ; 0]; one_t = [0 ; 1 ; 0]; two_t = [0 ; 0 ; 1];
z = [1 0 ; 0 -1]; gm6 = [0 0 0 ; 0 0 1 ; 0 1 0]; gm7 = [0 0 0 ; 0 0 -1i ; 0 1i 0];

LHS = kron(kron(one_t,one_b),kron(conj(transpose(two_t)),conj(transpose(one_b))));
RHS_1 = [0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 1 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0];
RHS_2 = (1/4)*(kron(eye(2),gm6) - kron(z,gm6) + 1i*kron(eye(2),gm7) - 1i*kron(z,gm7)); % Not Working
RHS_3 = kron(kron(one_b,one_t),kron(conj(transpose(one_b)),conj(transpose(two_t)))); % Not working, equal to RHS_2, not equal to RHS_1
isequal(LHS,RHS_1)
isequal(LHS,RHS_2)
isequal(LHS,RHS_3)

%% Eq. 81
zero_b = [1 ; 0]; one_b = [0 ; 1];
zero_t = [1 ; 0 ; 0]; one_t = [0 ; 1 ; 0]; two_t = [0 ; 0 ; 1];
z = [1 0 ; 0 -1]; gm6 = [0 0 0 ; 0 0 1 ; 0 1 0];

LHS = kron(kron(one_t,one_b),kron(conj(transpose(two_t)),conj(transpose(one_b)))) + kron(kron(two_t,one_b),kron(conj(transpose(one_t)),conj(transpose(one_b))));
RHS_1 = [0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 1 ; 0 0 0 0 0 0 ; 0 0 0 1 0 0];
RHS_2 = (1/2)*(kron(gm6,eye(2)) - kron(gm6,z));
isequal(LHS,RHS_1)
isequal(LHS,RHS_2)

%% Eq. 82
z = [1 0 ; 0 -1]; gm1 = [0 1 0 ; 1 0 0 ; 0 0 0]; gm2 = [0 -1i 0 ; 1i 0 0 ; 0 0 0];

LHS = [0 0 0 0 0 0 ; 1 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0];
RHS = (1/4)*(kron(z,gm1) + kron(eye(2),gm1) - 1i*kron(z,gm2) - 1i*kron(eye(2),gm2));
isequal(LHS,RHS)

%% Eq. 83
z = [1 0 ; 0 -1]; gm1 = [0 1 0 ; 1 0 0 ; 0 0 0]; gm2 = [0 -1i 0 ; 1i 0 0 ; 0 0 0];

LHS = [0 1 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0];
RHS = (1/4)*(kron(z,gm1) + kron(eye(2),gm1) + 1i*kron(z,gm2) + 1i*kron(eye(2),gm2));
isequal(LHS,RHS)

%% Eq. 84
z = [1 0 ; 0 -1]; gm1 = [0 1 0 ; 1 0 0 ; 0 0 0];

LHS = [0 1 0 0 0 0 ; 1 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0];
RHS = (1/2)*(kron(z,gm1) + kron(eye(2),gm1));
isequal(LHS,RHS)

%% Eq. 85
zero_b = [1 ; 0]; one_b = [0 ; 1];
zero_t = [1 ; 0 ; 0]; one_t = [0 ; 1 ; 0]; two_t = [0 ; 0 ; 1];
x = [0 1 ; 1 0]; y = [0 -1i ; 1i 0];
gm4 = [0 0 1 ; 0 0 0 ; 1 0 0]; gm5 = [0 0 -1i ; 0 0 0 ; 1i 0 0];

LHS = kron(kron(zero_b,two_t),kron(conj(transpose(one_b)),conj(transpose(zero_t))));
RHS_1 = [0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 1 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0];
RHS_2 = (1/4)*(kron(x,gm4) + 1i*kron(y,gm4) - 1i*kron(x,gm5) + kron(y,gm5));
isequal(LHS,RHS_1)
isequal(LHS,RHS_2)

%% Eq. 86
zero_b = [1 ; 0]; one_b = [0 ; 1];
zero_t = [1 ; 0 ; 0]; one_t = [0 ; 1 ; 0]; two_t = [0 ; 0 ; 1];
x = [0 1 ; 1 0]; y = [0 -1i ; 1i 0];
gm4 = [0 0 1 ; 0 0 0 ; 1 0 0]; gm5 = [0 0 -1i ; 0 0 0 ; 1i 0 0];

LHS = kron(kron(zero_b,two_t),kron(conj(transpose(one_b)),conj(transpose(zero_t)))) + kron(kron(one_b,zero_t),kron(conj(transpose(zero_b)),conj(transpose(two_t))));
RHS_1 = [0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 1 0 0 ; 0 0 1 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0];
RHS_2 = (1/2)*(kron(x,gm4) + kron(y,gm5));
isequal(LHS,RHS_1)
isequal(LHS,RHS_2)

%% Eq. 87
x = [0 1 ; 1 0]; y = [0 -1i ; 1i 0]; z = [1 0 ; 0 -1];
gm4 = [0 0 1 ; 0 0 0 ; 1 0 0]; gm5 = [0 0 -1i ; 0 0 0 ; 1i 0 0];

LHS = [0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 1 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0];
RHS = (1/4)*(kron(z,gm4) + kron(eye(2),gm4) - 1i*kron(z,gm5) - 1i*kron(eye(2),gm5));
isequal(LHS,RHS)

%% Eq. 88
x = [0 1 ; 1 0]; y = [0 -1i ; 1i 0]; z = [1 0 ; 0 -1];
gm4 = [0 0 1 ; 0 0 0 ; 1 0 0];

LHS = [0 0 1 0 0 0 ; 0 0 0 0 0 0 ; 1 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0];
RHS = (1/2)*(kron(z,gm4) + kron(eye(2),gm4));
isequal(LHS,RHS)

%% Eq. 89
zero_b = [1 ; 0]; one_b = [0 ; 1];
zero_t = [1 ; 0 ; 0]; one_t = [0 ; 1 ; 0]; two_t = [0 ; 0 ; 1];

LHS = kron(kron(one_b,one_t),kron(conj(transpose(one_b)),conj(transpose(two_t))));
RHS = [0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 1 ; 0 0 0 0 0 0];
isequal(LHS,RHS)

%% Eq. 90
zero_b = [1 ; 0]; one_b = [0 ; 1];
zero_t = [1 ; 0 ; 0]; one_t = [0 ; 1 ; 0]; two_t = [0 ; 0 ; 1];

LHS = kron(kron(one_b,one_t),kron(conj(transpose(one_b)),conj(transpose(two_t)))) + kron(kron(one_b,two_t),kron(conj(transpose(one_b)),conj(transpose(one_t))));
RHS = [0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 1 ; 0 0 0 0 1 0];
isequal(LHS,RHS)

%% Eq. 91
zero_b = [1 ; 0]; one_b = [0 ; 1];
zero_t = [1 ; 0 ; 0]; one_t = [0 ; 1 ; 0]; two_t = [0 ; 0 ; 1];
x = [0 1 ; 1 0]; y = [0 -1i ; 1i 0]; z = [1 0 ; 0 -1];
gm1 = [0 1 0 ; 1 0 0 ; 0 0 0]; gm6 = [0 0 0 ; 0 0 1 ; 0 1 0]; gm8 = (1/sqrt(3))*[1 0 0 ; 0 1 0 ; 0 0 -2];

LHS = kron(kron(one_t,conj(transpose(two_t))),x) + kron(kron(two_t,conj(transpose(one_t))),x);
RHS_1 = [0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 1 ; 0 0 0 0 1 0 ; 0 0 0 1 0 0 ; 0 0 1 0 0 0];
RHS_2 = kron(gm6,x);
RHS_3 = (-1/2)*kron(z,gm1) + (1/2)*kron(eye(2),gm1) - (1/sqrt(3))*kron(x,gm8) + (1/3)*kron(x,eye(3)); % Slightly off due to rounding but still equal to LHS
isequal(LHS,RHS_1)
isequal(LHS,RHS_2)

%% Eq. 92
zero_b = [1 ; 0]; one_b = [0 ; 1];
zero_t = [1 ; 0 ; 0]; one_t = [0 ; 1 ; 0]; two_t = [0 ; 0 ; 1];
x = [0 1 ; 1 0]; gm6 = [0 0 0 ; 0 0 1 ; 0 1 0]; gm7 = [0 0 0 ; 0 0 -1i ; 0 1i 0];

LHS = kron(x,kron(one_t,conj(transpose(two_t))));
RHS_1 = [0 0 0 0 0 0 ; 0 0 0 0 0 1 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 1 0 0 0 ; 0 0 0 0 0 0];
RHS_2 = (1/2)*kron(x,gm6 + 1i*gm7);
isequal(LHS,RHS_1)
isequal(LHS,RHS_2)

%% Eq. 93
zero_b = [1 ; 0]; one_b = [0 ; 1];
zero_t = [1 ; 0 ; 0]; one_t = [0 ; 1 ; 0]; two_t = [0 ; 0 ; 1];
x = [0 1 ; 1 0]; gm6 = [0 0 0 ; 0 0 1 ; 0 1 0];

LHS = kron(x,kron(one_t,conj(transpose(two_t)))) + kron(x,kron(two_t,conj(transpose(one_t))));
RHS_1 = [0 0 0 0 0 0 ; 0 0 0 0 0 1 ; 0 0 0 0 1 0 ; 0 0 0 0 0 0 ; 0 0 1 0 0 0 ; 0 1 0 0 0 0];
RHS_2 = kron(x,gm6);
isequal(LHS,RHS_1)
isequal(LHS,RHS_2)

%% Eq. 94
zero_b = [1 ; 0]; one_b = [0 ; 1];
zero_t = [1 ; 0 ; 0]; one_t = [0 ; 1 ; 0]; two_t = [0 ; 0 ; 1];
x = [0 1 ; 1 0]; y = [0 -1i ; 1i 0]; z = [1 0 ; 0 -1];
gm6 = [0 0 0 ; 0 0 1 ; 0 1 0]; gm7 = [0 0 0 ; 0 0 -1i ; 0 1i 0];

LHS = kron(kron(one_t,zero_b),kron(conj(transpose(two_t)),conj(transpose(zero_b))));
RHS_1 = [0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 1 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0];
RHS_2 = (1/4)*(kron(x,gm6) + 1i*kron(y,gm6) - 1i*kron(x,gm7) + kron(y,gm7));
RHS_3 = (1/4)*(kron(gm6,eye(2)) + kron(gm6,z) + 1i*kron(gm7,eye(2)) + 1i*kron(gm7,z));
isequal(LHS,RHS_1)
isequal(LHS,RHS_2)
isequal(LHS,RHS_3)

%% Eq. 95
zero_b = [1 ; 0]; one_b = [0 ; 1];
zero_t = [1 ; 0 ; 0]; one_t = [0 ; 1 ; 0]; two_t = [0 ; 0 ; 1];
z = [1 0 ; 0 -1]; gm6 = [0 0 0 ; 0 0 1 ; 0 1 0]; gm7 = [0 0 0 ; 0 0 -1i ; 0 1i 0];

LHS = kron(kron(zero_b,one_t),kron(conj(transpose(zero_b)),conj(transpose(two_t))));
RHS_1 = [0 0 0 0 0 0 ; 0 0 1 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0];
RHS_2 = (1/4)*(kron(eye(2),gm6) + kron(z,gm6) + 1i*kron(eye(2),gm7) + 1i*kron(z,gm7));
isequal(LHS,RHS_1)
isequal(LHS,RHS_2)

%% Eq. 96
zero_b = [1 ; 0]; one_b = [0 ; 1];
zero_t = [1 ; 0 ; 0]; one_t = [0 ; 1 ; 0]; two_t = [0 ; 0 ; 1];
z = [1 0 ; 0 -1]; gm6 = [0 0 0 ; 0 0 1 ; 0 1 0];


LHS = kron(kron(zero_b,one_t),kron(conj(transpose(zero_b)),conj(transpose(two_t)))) + kron(kron(zero_b,two_t),kron(conj(transpose(zero_b)),conj(transpose(one_t))));
RHS_1 = [0 0 0 0 0 0 ; 0 0 1 0 0 0 ; 0 1 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0];
RHS_2 = (1/2)*(kron(eye(2),gm6) + kron(z,gm6));
isequal(LHS,RHS_1)
isequal(LHS,RHS_2)
