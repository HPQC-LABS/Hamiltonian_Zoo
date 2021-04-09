%% Section V: 3-level Systems
%% Eq. 39
x3 = [0 1 0 ; 1 0 1 ; 0 1 0]; y3 = [0 -1i 0 ; 1i 0 -1i ; 0 1i 0]; z3 = [1 0 0 ; 0 0 0 ; 0 0 -1];

%% Eq. 40 - 1 
x3 = [0 1 0 ; 1  0 1 ; 0 1 0]; z3 = [1 0 0 ; 0 0 0 ; 0 0 -1];
LHS = [0 1 0 ; 1 0 0 ; 0 0 0];
RHS = (1/2)*(x3 + z3*x3 + x3*z3);
isequal(LHS,RHS)

%% Eq. 40 - 2
y3 = [0 -1i 0 ; 1i 0 -1i ; 0 1i 0]; z3 = [1 0 0 ; 0 0 0 ; 0 0 -1];
LHS = [0 -1i 0 ; 1i 0 0 ; 0 0 0];
RHS = (1/2)*(y3 + y3*z3 + z3*y3);
isequal(LHS,RHS)

%% Eq. 41 - 1
x3 = [0 1 0 ; 1  0 1 ; 0 1 0]; y3 = [0 -1i 0 ; 1i 0 -1i ; 0 1i 0]; z3 = [1 0 0 ; 0 0 0 ; 0 0 -1];
LHS = [1 0 0 ; 0 -1 0 ; 0 0 0];
RHS = 2*eye(3) + (1/2)*(z3 - (3/2)*x3^2 - (3/2)*y3^2);
isequal(LHS,RHS)

%% Eq. 41 - 2
x3 = [0 1 0 ; 1  0 1 ; 0 1 0]; y3 = [0 -1i 0 ; 1i 0 -1i ; 0 1i 0]; z3 = [1 0 0 ; 0 0 0 ; 0 0 -1];
LHS = [0 0 1 ; 0 0 0 ; 1 0 0];
RHS = (1/2)*(x3^2 - y3^2);
isequal(LHS,RHS)

%% Eq. 42 - 1
x3 = [0 1 0 ; 1  0 1 ; 0 1 0]; y3 = [0 -1i 0 ; 1i 0 -1i ; 0 1i 0];
LHS = [0 0 -1i ; 0 0 0 ; 1i 0 0];
RHS = (1/2)*(x3*y3 + y3*x3);
isequal(LHS,RHS)

%% Eq. 42 - 2
x3 = [0 1 0 ; 1  0 1 ; 0 1 0]; z3 = [1 0 0 ; 0 0 0 ; 0 0 -1];
LHS = [0 0 0 ; 0 0 1 ; 0 1 0];
RHS = (1/2)*(x3 - z3*x3 - x3*z3);
isequal(LHS,RHS)

%% Eq. 43 - 1
y3 = [0 -1i 0 ; 1i 0 -1i ; 0 1i 0]; z3 = [1 0 0 ; 0 0 0 ; 0 0 -1];
LHS = [0 0 0 ; 0 0 -1i ; 0 1i 0];
RHS = (1/2)*(y3 - y3*z3 - z3*y3);
isequal(LHS,RHS)

%% Eq. 43 - 2
x3 = [0 1 0 ; 1  0 1 ; 0 1 0]; y3 = [0 -1i 0 ; 1i 0 -1i ; 0 1i 0]; z3 = [1 0 0 ; 0 0 0 ; 0 0 -1];
LHS = (1/sqrt(3))*[1 0 0 ; 0 1 0 ; 0 0 -2];
RHS = (1/sqrt(3))*(-2*eye(3) + (3/2)*(z3 + (1/2)*x3^2 + (1/2)*y3^2));
isequal(LHS,RHS)

%% Eq. 44
x3 = [0 1 0 ; 1 0 1 ; 0 1 0]; y3 = [0 -1i 0 ; 1i 0 -1i ; 0 1i 0];

LHS = [0 1 0 ; 0 0 1 ; 0 0 0];
RHS = (1/2)*(x3 + 1i*y3);
isequal(LHS, RHS)

%% Eq. 45
x3 = [0 1 0 ; 1 0 1 ; 0 1 0]; y3 = [0 -1i 0 ; 1i 0 -1i ; 0 1i 0];

LHS = [0 0 0 ; 1 0 0 ; 0 1 0];
RHS = (1/2)*(x3 - 1i*y3);
isequal(LHS, RHS)

%% Eq. 46 (Not Working)
z3 = [1 0 0 ; 0 0 0 ; 0 0 -1];

LHS = [1 0 0 ; 0 0 0 ; 0 0 0];
RHS = (eye(3) + z3)/2;
isequal(LHS, RHS)

%% Eq. 47
s_32 = [0 0 0 ; 0 1 0 ; 0 0 0];

%% Eq. 48 (Not Working)
z3 = [1 0 0 ; 0 0 0 ; 0 0 -1];

LHS = [0 0 0 ; 0 0 0 ; 0 0 1];
RHS = (eye(3) - z3)/2;
isequal(LHS, RHS)

%% Eq. 49 - 1
x3 = [0 1 0 ; 1 0 1 ; 0 1 0];
LHS = [1 0 1 ; 0 2 0 ; 1 0 1];
RHS = x3^2;
isequal(LHS,RHS)

%% Eq. 49 - 2
y3 = [0 -1i 0 ; 1i 0 -1i ; 0 1i 0];
LHS = [1 0 -1 ; 0 2 0 ; -1 0 1];
RHS = y3^2;
isequal(LHS,RHS)

%% Eq. 50 - 1
x3 = [0 1 0 ; 1  0 1 ; 0 1 0]; y3 = [0 -1i 0 ; 1i 0 -1i ; 0 1i 0];
LHS = [0 0 -2i ; 0 0 0 ; 2i 0 0];
RHS = x3*y3 + y3*x3;
isequal(LHS,RHS)

%% Eq. 50 - 2
x3 = [0 1 0 ; 1  0 1 ; 0 1 0]; y3 = [0 -1i 0 ; 1i 0 -1i ; 0 1i 0]; z3 = [1 0 0 ; 0 0 0 ; 0 0 -1];
LHS = [0 -1i 0 ; 1i 0 1i ; 0 -1i 0];
RHS = y3*z3 + z3*y3;
isequal(LHS,RHS)

%% Eq. 51
gm6 = [0 0 0 ; 0 0 1 ; 0 1 0]; gm7 = [0 0 0 ; 0 0 -1i ; 0 1i 0];
one = [0 ; 1 ; 0]; two = [0 ; 0 ; 1];

LHS = kron(one,two');
RHS_1 = [0 0 0 ; 0 0 1 ; 0 0 0];
RHS_2 = (gm6 + 1i*gm7)/2;
isequal(LHS,RHS_1)
isequal(LHS,RHS_2)

%% Eq. 52
gm6 = [0 0 0 ; 0 0 1 ; 0 1 0];

LHS = [0 0 0 ; 0 1 0 ; 0 0 1];
RHS = gm6*gm6;
isequal(LHS, RHS)

%% Eq. 53 - 1
gm5 = [0 0 -1i ; 0 0 0 ; 1i 0 0]; gm7 = [0 0 0 ; 0 0 -1i ; 0 1i 0];

LHS = gm7*gm5;
RHS = [0 0 0 ; 1 0 0 ; 0 0 0];
isequal(LHS, RHS)

%% Eq. 53 - 2 (Not Working)
gm3 = [1 0 0 ; 0 -1 0 ; 0 0 0]; gm7 = [0 0 0 ; 0 0 -1i ; 0 1i 0];

LHS = gm3*gm7;
RHS = [0 1 0 ; 0 0 0 ; 0 0 0];
isequal(LHS, RHS)

%% Eq. 53 - 3 (Not Working)
gm1 = [0 1 0 ; 1 0 0 ; 0 0 0]; gm3 = [1 0 0 ; 0 -1 0 ; 0 0 0]; gm7 = [0 0 0 ; 0 0 -1i ; 0 1i 0];

LHS = gm7*gm3 + gm3*gm7;
isequal(LHS, gm1)

%% Eq. 54 - 1
gm1 = [0 1 0 ; 1 0 0 ; 0 0 0]; gm2 = [0 -1i 0 ; 1i 0 0 ; 0 0 0];
gm6 = [0 0 0 ; 0 0 1 ; 0 1 0]; gm7 = [0 0 0 ; 0 0 -1i ; 0 1i 0];

LHS = gm7*gm2;
RHS_1 = [0 0 0 ; 0 0 0 ; -1 0 0];
RHS_2 = -gm6*gm1;

isequal(LHS, RHS_1)
isequal(LHS, RHS_2)

%% Eq. 54 - 2
gm1 = [0 1 0 ; 1 0 0 ; 0 0 0]; gm2 = [0 -1i 0 ; 1i 0 0 ; 0 0 0];
gm6 = [0 0 0 ; 0 0 1 ; 0 1 0]; gm7 = [0 0 0 ; 0 0 -1i ; 0 1i 0];

LHS = gm2*gm7;
RHS_1 = [0 0 -1 ; 0 0 0 ; 0 0 0];
RHS_2 = -gm1*gm6;
isequal(LHS,RHS_1)
isequal(LHS,RHS_2)

%% Eq. 54 - 3
gm2 = [0 -1i 0 ; 1i 0 0 ; 0 0 0]; gm4 = [0 0 1 ; 0 0 0 ; 1 0 0]; gm7 = [0 0 0 ; 0 0 -1i ; 0 1i 0];

LHS = gm7*gm2 + gm2*gm7;
isequal(LHS, -gm4)

%% Eq. 54 - 4
gm1 = [0 1 0 ; 1 0 0 ; 0 0 0]; gm4 = [0 0 1 ; 0 0 0 ; 1 0 0]; gm6 = [0 0 0 ; 0 0 1 ; 0 1 0];

LHS = gm6*gm1 + gm1*gm6;
isequal(LHS, gm4);

%% Eq. 55
gm1 = [0 1 0 ; 1 0 0 ; 0 0 0]; gm5 = [0 0 -1i ; 0 0 0 ; 1i 0 0];

LHS = gm5^2;
RHS_1 = [1 0 0 ; 0 0 0 ; 0 0 1];
RHS_2 = abs(gm1);
isequal(LHS,RHS_1)
isequal(LHS,RHS_2) % Not Working

%% Eq. 56 - 1
gm2 = [0 -1i 0 ; 1i 0 0 ; 0 0 0]; gm5 = [0 0 -1i ; 0 0 0 ; 1i 0 0];

LHS = gm5*gm2;
RHS = [0 0 0 ; 0 0 0 ; 0 1 0];
isequal(LHS, RHS)

%% Eq. 56 - 2 (Not Working)
gm2 = [0 -1i 0 ; 1i 0 0 ; 0 0 0]; gm3 = [1 0 0 ; 0 -1 0 ; 0 0 0]; 

LHS = gm2*gm3;
RHS = [0 0 0 ; 0 0 1 ; 0 0 0];
isequal(LHS, RHS)

%% Eq. 56 - 3 (Not Working)
gm2 = [0 -1i 0 ; 1i 0 0 ; 0 0 0]; gm3 = [1 0 0 ; 0 -1 0 ; 0 0 0]; gm6 = [0 0 0 ; 0 0 1 ; 0 1 0];

LHS = gm3*gm2 + gm2*gm3;
isequal(LHS, gm6)

%% Eq. 57
gm2 = [0 -1i 0 ; 1i 0 0 ; 0 0 0]; gm3 = [1 0 0 ; 0 -1 0 ; 0 0 0]; 

LHS = gm2^2;
isequal(LHS, abs(gm3))

%% Section W: 4-Level Systems
%% Eq. 58
x4 = [0 sqrt(3) 0 0 ; sqrt(3) 0 2 0 ; 0 2 0 sqrt(3) ; 0 0 sqrt(3) 0]; 
y4 = [0 -sqrt(3)*1i 0 0 ; sqrt(3)*1i 0 2 0 ; 0 2 0 -sqrt(3)*1i ; 0 0 sqrt(3)*1i 0]; 
z4 = [3 0 0 0 ; 0 1 0 0 ; 0 0 -1 0 ; 0 0 0 -3];

%% Eq. 59
gamma1 = [1 0 0 0 ; 0 1 0 0 ; 0 0 -1 0 ; 0 0 0 -1]; gamma2 = [0 0 0 1 ; 0 0 1 0 ; 0 -1 -1 0 ; -1 0 0 0];
gamma3 = [0 0 0 -1i ; 0 0 1i 0 ; 0 1i 0 0 ; -1i 0 0 0]; gamma4 = [0 0 1 0 ; 0 0 0 -1 ; -1 0 0 0 ; 0 1 0 0];
gamma5 = [0 0 1 0 ; 0 0 0 1 ; 1 0 0 0 ; 0 1 0 0];

%% Eq. 63 (Not Working)
x4 = [0 sqrt(3) 0 0 ; sqrt(3) 0 2 0 ; 0 2 0 sqrt(3) ; 0 0 sqrt(3) 0]; 
y4 = [0 -sqrt(3)*1i 0 0 ; sqrt(3)*1i 0 2 0 ; 0 2 0 -sqrt(3)*1i ; 0 0 sqrt(3)*1i 0]; 

LHS = [0 sqrt(3) 0 0 ; 0 0 2 0 ; 0 0 0 sqrt(3) ; 0 0 0 0];
RHS = (x4 + 1i*y4)/2;
isequal(LHS, RHS)

%% Eq. 64 (Not Working)
x4 = [0 sqrt(3) 0 0 ; sqrt(3) 0 2 0 ; 0 2 0 sqrt(3) ; 0 0 sqrt(3) 0]; 
y4 = [0 -sqrt(3)*1i 0 0 ; sqrt(3)*1i 0 2 0 ; 0 2 0 -sqrt(3)*1i ; 0 0 sqrt(3)*1i 0]; 
z4 = [3 0 0 0 ; 0 1 0 0 ; 0 0 -1 0 ; 0 0 0 -3];

LHS = [0 0 0 0 ; sqrt(3) 0 0 0 ; 0 2 0 0 ; 0 0 sqrt(3) 0];
RHS = (x4 - 1i*y4)/2;
isequal(LHS, RHS)

%% Eq. 65
z = [1 0 ; 0 -1];
z1 = kron(z,eye(2));
z2 = kron(eye(2),z);

LHS = (1/4)*(z2 + z1*z2 + z1 + eye(4));
RHS = [1 0 0 0 ; 0 0 0 0 ; 0 0 0 0 ; 0 0 0 0];
isequal(LHS, RHS)

%% Eq. 66
z = [1 0 ; 0 -1];
z1 = kron(z,eye(2));
z2 = kron(eye(2),z);

LHS = [0 0 0 0 ; 0 1 0 0 ; 0 0 0 0 ; 0 0 0 0];
RHS = (1/4)*(eye(4) + z1 - z2 - z1*z2);
isequal(LHS, RHS)

%% Eq. 67
z = [1 0 ; 0 -1];
z1 = kron(z,eye(2));
z2 = kron(eye(2),z);

LHS = [0 0 0 0 ; 0 0 0 0 ; 0 0 1 0 ; 0 0 0 0];
RHS = (1/4)*(eye(4) - z1 + z2 - z1*z2);
isequal(LHS, RHS)

%% Eq. 68
z = [1 0 ; 0 -1];
z1 = kron(z,eye(2));
z2 = kron(eye(2),z);

LHS = [0 0 0 0 ; 0 0 0 0 ; 0 0 0 0 ; 0 0 0 1];
RHS = (1/4)*(eye(4) - z1 - z2 + z1*z2);
isequal(LHS, RHS)

%% Eq. 69
z = [1 0 ; 0 -1];
z1 = kron(z,eye(2));
z2 = kron(eye(2),z);
LHS = (1/2)*(eye(4) - z1 + z1*z2 + z2);
RHS = [1 0 0 0 ; 0 -1 0 0 ; 0 0 1 0 ; 0 0 0 1];
isequal(LHS, RHS)

%% Eq. 70
z = [1 0 ; 0 -1];
z1 = kron(z,eye(2));
z2 = kron(eye(2),z);
LHS = (1/2)*(eye(4) - z2 + z1*z2 + z1);
RHS = [1 0 0 0 ; 0 1 0 0 ; 0 0 -1 0 ; 0 0 0 1];
isequal(LHS, RHS)

%% Eq. 71
zero = [1 ; 0]; one = [0 ; 1];
x = [0 1 ; 1 0]; y = [0 -1i ; 1i 0];

x1 = kron(x,eye(2));
y1 = kron(y,eye(2));

x2 = kron(eye(2),x);
y2 = kron(eye(2),y);

LHS = kron(one,zero)*kron(zero,one)';
RHS_1 = [0 0 0 0 ; 0 0 0 0 ; 0 1 0 0 ; 0 0 0 0];
RHS_2 = (1/4)*(x1*x2 - 1i*y1*x2 + 1i*x1*y2 + y1*y2);
isequal(LHS,RHS_1)
isequal(LHS,RHS_2)

%% Eq. 72
zero = [1 ; 0]; one = [0 ; 1];
x = [0 1 ; 1 0]; y = [0 -1i ; 1i 0];

x1 = kron(kron(eye(1),x),eye(2));
y1 = kron(kron(eye(1),y),eye(2));

x2 = kron(kron(eye(2),x),eye(1));
y2 = kron(kron(eye(2),y),eye(1));

LHS = kron(zero,one)*kron(one,zero)';
RHS_1 = [0 0 0 0 ; 0 0 1 0 ; 0 0 0 0 ; 0 0 0 0];
RHS_2 = (1/4)*(x1*x2 - 1i*x1*y2 + 1i*y1*x2 + y1*y2);
isequal(LHS,RHS_1)
isequal(LHS,RHS_2)

%% Eq. 73
x = [0 1 ; 1 0]; y = [0 -1i ; 1i 0]; z = [1 0 ; 0 -1];

x1 = kron(x,eye(2));
y1 = kron(y,eye(2));
z1 = kron(z,eye(2));

x2 = kron(eye(2),x);
y2 = kron(eye(2),y);
z2 = kron(eye(2),z);

LHS = [1 0 0 0 ; 0 1 0 0 ; 0 0 0 1 ; 0 0 1 0];
RHS = (1/2)*(eye(4) + z1 + x2 - z1*x2);
isequal(LHS, RHS)

%% Section X: 5-level systems
%% Eq. 74
x5 = [0 2 0 0 0 ; 2 0 sqrt(6) 0 0 ; 0 sqrt(6) 0 sqrt(6) 0 ; 0 0 sqrt(6) 0 2 ; 0 0 0 2 0];
y5 = [0 -2i 0 0 0 ; 2i 0 -sqrt(6)*1i 0 0 ; 0 sqrt(6)*1i 0 -sqrt(6)*1i 0 ;  0 0 sqrt(6)*1i 0 -2i ; 0 0 0 2i 0];
z5 = [2 0 0 0 0 ; 0 1 0 0 0 ; 0 0 0 0 0 ; 0 0 0 -1 0 ; 0 0 0 0 -2];

%% Eq. 75
x5 = [0 2 0 0 0 ; 2 0 sqrt(6) 0 0 ; 0 sqrt(6) 0 sqrt(6) 0 ; 0 0 sqrt(6) 0 2 ; 0 0 0 2 0];
y5 = [0 -2i 0 0 0 ; 2i 0 -sqrt(6)*1i 0 0 ; 0 sqrt(6)*1i 0 -sqrt(6)*1i 0 ;  0 0 sqrt(6)*1i 0 -2i ; 0 0 0 2i 0];

LHS = [0 2 0 0 0 ; 0 0 sqrt(6) 0 0 ; 0 0 0 sqrt(6) 0 ; 0 0 0 0 2 ; 0 0 0 0 0];
RHS = (x5 + 1i*y5)/2;
isequal(LHS, RHS)

%% Eq. 76
z5 = [2 0 0 0 0 ; 0 1 0 0 0 ; 0 0 0 0 0 ; 0 0 0 -1 0 ; 0 0 0 0 -2];
x5 = [0 2 0 0 0 ; 2 0 sqrt(6) 0 0 ; 0 sqrt(6) 0 sqrt(6) 0 ; 0 0 sqrt(6) 0 2 ; 0 0 0 2 0];
y5 = [0 -2i 0 0 0 ; 2i 0 -sqrt(6)*1i 0 0 ; 0 sqrt(6)*1i 0 -sqrt(6)*1i 0 ;  0 0 sqrt(6)*1i 0 -2i ; 0 0 0 2i 0];

LHS = [0 0 0 0 0 ; 2 0 0 0 0 ; 0 sqrt(6) 0 0 0 ; 0 0 sqrt(6) 0 0 ; 0 0 0 2 0];
RHS = (x5 - 1i*y5)/2;
isequal(LHS, RHS)

%% Eq. 77
m_12s = [0 1 0 0 0 ; 1 0 0 0 0 ; 0 0 0 0 0 ; 0 0 0 0 0 ; 0 0 0 0 0];
m_12a = [0 -1i 0 0 0 ; 1i 0 0 0 0 ; 0 0 0 0 0 ; 0 0 0 0 0 ; 0 0 0 0 0];
m_1d = [1 0 0 0 0 ; 0 -1 0 0 0 ; 0 0 0 0 0 ; 0 0 0 0 0 ; 0 0 0 0 0];
m_13s = [0 0 1 0 0 ; 0 0 0 0 0 ; 1 0 0 0 0 ; 0 0 0 0 0 ; 0 0 0 0 0];
m_13a = [0 0 -1i 0 0 ; 0 0 0 0 0 ; 1i 0 0 0 0 ; 0 0 0 0 0 ; 0 0 0 0 0];

%% Eq. 78
m_14s = [0 0 0 1 0 ; 0 0 0 0 0 ; 0 0 0 0 0 ; 1 0 0 0 0 ; 0 0 0 0 0];
m_14a = [0 0 0 -1i 0 ; 0 0 0 0 0 ; 0 0 0 0 0 ; 1i 0 0 0 0 ; 0 0 0 0 0];
m_15s = [0 0 0 0 1 ; 0 0 0 0 0 ; 0 0 0 0 0 ; 0 0 0 0 0 ; 1 0 0 0 0];
m_15a = [0 0 0 0 -1i ; 0 0 0 0 0 ; 0 0 0 0 0 ; 0 0 0 0 0 ; 1i 0 0 0 0];
m_23s = [0 0 0 0 0 ; 0 0 1 0 0 ; 0 1 0 0 0 ; 0 0 0 0 0 ; 0 0 0 0 0];

%% Eq. 79
m_23a = [0 0 0 0 0 ; 0 0 -1i 0 0 ; 0 1i 0 0 0 ; 0 0 0 0 0 ; 0 0 0 0 0];
m_2d = (1/sqrt(3))*[1 0 0 0 0 ; 0 1 0 0 0 ; 0 0 -2 0 0 ; 0 0 0 0 0 ; 0 0 0 0 0];
m_24s = [0 0 0 0 0 ; 0 0 0 1 0 ; 0 0 0 0 0 ; 0 1 0 0 0 ; 0 0 0 0 0];
m_24a = [0 0 0 0 0 ; 0 0 0 -1i 0 ; 0 0 0 0 0 ; 0 1i 0 0 0 ; 0 0 0 0 0];
m_25s = [0 0 0 0 0 ; 0 0 0 0 1 ; 0 0 0 0 0 ; 0 0 0 0 0 ; 0 1 0 0 0];

%% Eq. 80
m_25a = [0 0 0 0 0 ; 0 0 0 0 -1i ; 0 0 0 0 0 ; 0 0 0 0 0 ; 0 1i 0 0 0];
m_34s = [0 0 0 0 0 ; 0 0 0 0 0 ; 0 0 0 1 0 ; 0 0 1 0 0 ; 0 0 0 0 0];
m_34a = [0 0 0 0 0 ; 0 0 0 0 0 ; 0 0 0 -1i 0 ; 0 0 1i 0 0 ; 0 0 0 0 0];
m_3d = (1/sqrt(6))*[1 0 0 0 0 ; 0 1 0 0 0 ; 0 0 1 0 0 ; 0 0 0 -3 0 ; 0 0 0 0 0];
m_35s = [0 0 0 0 0 ; 0 0 0 0 0 ; 0 0 0 0 1 ; 0 0 0 0 0 ; 0 0 1 0 0];

%% Eq. 81
m_35a = [0 0 0 0 0 ; 0 0 0 0 0 ; 0 0 0 0 -1i ; 0 0 0 0 0 ; 0 0 1i 0 0];
m_45s = [0 0 0 0 0 ; 0 0 0 0 0 ; 0 0 0 0 0 ; 0 0 0 0 1 ; 0 0 0 1 0];
m_45a = [0 0 0 0 0 ; 0 0 0 0 0 ; 0 0 0 0 0 ; 0 0 0 0 -1i ; 0 0 0 1i 0];
m_4d = (1/sqrt(10))*[1 0 0 0 0 ; 0 1 0 0 0 ; 0 0 1 0 0 ; 0 0 0 1 0 ; 0 0 0 0 -4];

%% Eq. 82
s_51 = [1 0 0 0 0 ; 0 0 0 0 0 ; 0 0 0 0 0 ; 0 0 0 0 0 ; 0 0 0 0 0];

%% Eq. 83
s_52 = [0 0 0 0 0 ; 0 1 0 0 0 ; 0 0 0 0 0 ; 0 0 0 0 0 ; 0 0 0 0 0];

%% Eq. 84
s_53 = [0 0 0 0 0 ; 0 0 0 0 0 ; 0 0 1 0 0 ; 0 0 0 0 0 ; 0 0 0 0 0];

%% Eq. 85
s_54 = [0 0 0 0 0 ; 0 0 0 0 0 ; 0 0 0 0 0 ; 0 0 0 1 0 ; 0 0 0 0 0];

%% Eq. 86
s_55 = [0 0 0 0 0 ; 0 0 0 0 0 ; 0 0 0 0 0 ; 0 0 0 0 0 ; 0 0 0 0 1];

%% Section Y: 6-level Systems
%% Eq. 87 - 88
x6 = [0 sqrt(5) 0 0 0 0 ; sqrt(5) 0 sqrt(8) 0 0 0 ; 0 sqrt(8) 0 sqrt(9) 0 0 ; 0 0 sqrt(9) 0 sqrt(8) 0 ; 0 0 0 sqrt(8) 0 sqrt(5) ; 0 0 0 0 sqrt(5) 0];
y6 = [0 -sqrt(5)*1i 0 0 0 0 ; sqrt(5)*1i 0 -sqrt(8)*1i 0 0 0 ; 0 sqrt(8)*1i 0 -sqrt(9)*1i 0 0 ; 0 0 sqrt(9)*1i 0 -sqrt(8)*1i 0 ; 0 0 0 sqrt(8)*1i 0 -sqrt(5)*1i ; 0 0 0 0 sqrt(5)*1i 0];
z6 = [5 0 0 0 0 0 ; 0 3 0 0 0 0 ; 0 0 1 0 0 0 ; 0 0 0 -1 0 0 ; 0 0 0 0 -3 0 ; 0 0 0 0 0 -5];

%% Eq. 89
s6_plus = [0 sqrt(5) 0 0 0 0 ; 0 0 sqrt(8) 0 0 0 ; 0 0 0 sqrt(9) 0 0 ; 0 0 0 0 sqrt(8) 0 ; 0 0 0 0 0 sqrt(5) ; 0 0 0 0 0 0];
s6_minus = [0 0 0 0 0 0 ; sqrt(5) 0 0 0 0 0 ; 0 sqrt(8) 0 0 0 0 ; 0 0 sqrt(9) 0 0 0 ; 0 0 0 sqrt(8) 0 0 ; 0 0 0 0 sqrt(5) 0];

%% Eq. 90
m_12s = [0 1 0 0 0 0 ; 1 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0];
m_12a = [0 -1i 0 0 0 0 ; 1i 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0];
m_1d = [1 0 0 0 0 0 ; 0 -1 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0];
m_13s = [0 0 1 0 0 0 ; 0 0 0 0 0 0 ; 1 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0];

%% Eq. 91
m_13a = [0 0 -1i 0 0 0 ; 0 0 0 0 0 0 ; 1i 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0];
m_14s = [0 0 0 1 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 1 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0];
m_14a = [0 0 0 -1i 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 1i 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0];
m_15s = [0 0 0 0 1 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 1 0 0 0 0 0 ; 0 0 0 0 0 0];

%% Eq. 92
m_15a = [0 0 0 0 -1i 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 1i 0 0 0 0 0 ; 0 0 0 0 0 0];
m_16s = [0 0 0 0 0 1 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 1 0 0 0 0 0];
m_16a = [0 0 0 0 0 -1i ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 1i 0 0 0 0 0];
m_23s = [0 0 0 0 0 0 ; 0 0 1 0 0 0 ; 0 1 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0];

%% Eq. 93
m_23a = [0 0 0 0 0 0 ; 0 0 -1i 0 0 0 ; 0 1i 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0];
m_2d = (1/sqrt(3))*[1 0 0 0 0 0 ; 0 1 0 0 0 0 ; 0 0 -2 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0];
m_24s = [0 0 0 0 0 0 ; 0 0 0 1 0 0 ; 0 0 0 0 0 0 ; 0 1 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0];
m_24a = [0 0 0 0 0 0 ; 0 0 0 -1i 0 0 ; 0 0 0 0 0 0 ; 0 1i 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0];

%% Eq. 94
m_25s = [0 0 0 0 0 0 ; 0 0 0 0 1 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 1 0 0 0 0 ; 0 0 0 0 0 0];
m_25a = [0 0 0 0 0 0 ; 0 0 0 0 -1i 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 1i 0 0 0 0 ; 0 0 0 0 0 0];
m_26s = [0 0 0 0 0 0 ; 0 0 0 0 0 1 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 1 0 0 0 0];
m_26a = [0 0 0 0 0 0 ; 0 0 0 0 0 -1i ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 1i 0 0 0 0];

%% Eq. 95
m_34s = [0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 1 0 0 ; 0 0 1 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0];
m_34a = [0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 -1i 0 0 ; 0 0 1i 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0];
m_3d = (1/sqrt(6))*[1 0 0 0 0 0 ; 0 1 0 0 0 0 ; 0 0 1 0 0 0 ; 0 0 0 -3 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0];
m_35s = [0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 1 0 ; 0 0 0 0 0 0 ; 0 0 1 0 0 0 ; 0 0 0 0 0 0];

%% Eq. 96
m_35a = [0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 -1i 0 ; 0 0 0 0 0 0 ; 0 0 1i 0 0 0 ; 0 0 0 0 0 0];
m_36s = [0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 1 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 1 0 0 0];
m_36a = [0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 -1i ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 1i 0 0 0];
m_45s = [0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 1 0 ; 0 0 0 1 0 0 ; 0 0 0 0 0 0];

%% Eq. 97
m_45a = [0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 -1i 0 ; 0 0 0 1i 0 0 ; 0 0 0 0 0 0];
m_4d = (1/sqrt(10))*[1 0 0 0 0 0 ; 0 1 0 0 0 0 ; 0 0 1 0 0 0 ; 0 0 0 1 0 0 ; 0 0 0 0 -4 0 ; 0 0 0 0 0 0];
m_46s = [0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 1 ; 0 0 0 0 0 0 ; 0 0 0 1 0 0];
m_46a = [0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 -1i ; 0 0 0 0 0 0 ; 0 0 0 1i 0 0];

%% Eq. 98
m_56s = [0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 1 ; 0 0 0 0 1 0];
m_56a = [0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 -1i ; 0 0 0 0 1i 0];
m_5d = (1/sqrt(15))*[1 0 0 0 0 0 ; 0 1 0 0 0 0 ; 0 0 1 0 0 0 ; 0 0 0 1 0 0 ; 0 0 0 0 1 0 ; 0 0 0 0 0 -5];

%% Eq. 99
zero_b = [1 ; 0]; one_b = [0 ; 1];
zero_t = [1 ; 0 ; 0]; one_t = [0 ; 1 ; 0];
x = [0 1 ; 1 0]; y = [0 -1i ; 1i 0];
gm1 = [0 1 0 ; 1 0 0 ; 0 0 0]; gm2 = [0 -1i 0 ; 1i 0 0 ; 0 0 0];

LHS = kron(zero_b,one_t)*kron(one_b,zero_t)';
RHS_1 = [0 0 0 0 0 0 ; 0 0 0 1 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0];
RHS_2 = (1/4)*(kron(x,gm1) + 1i*kron(y,gm1) - 1i*kron(x,gm2) + kron(y,gm2));
isequal(LHS, RHS_1)
isequal(LHS, RHS_2)

%% Eq. 100
zero_b = [1 ; 0]; one_b = [0 ; 1];
zero_t = [1 ; 0 ; 0]; one_t = [0 ; 1 ; 0];
x = [0 1 ; 1 0]; y = [0 -1i ; 1i 0];
gm1 = [0 1 0 ; 1 0 0 ; 0 0 0]; gm2 = [0 -1i 0 ; 1i 0 0 ; 0 0 0];

LHS = kron(one_b,zero_t)*kron(zero_b,one_t)';
RHS_1 = [0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 1 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0];
RHS_2 = (1/4)*(kron(x,gm1) - 1i*kron(y,gm1) + 1i*kron(x,gm2) + kron(y,gm2));
isequal(LHS,RHS_1)
isequal(LHS,RHS_2)

%% Eq. 101
zero_b = [1 ; 0]; one_b = [0 ; 1];
zero_t = [1 ; 0 ; 0]; one_t = [0 ; 1 ; 0];
x = [0 1 ; 1 0]; y = [0 -1i ; 1i 0];
gm1 = [0 1 0 ; 1 0 0 ; 0 0 0]; gm2 = [0 -1i 0 ; 1i 0 0 ; 0 0 0];

LHS = kron(zero_b,one_t)*kron(one_b,zero_t)' + kron(one_b,zero_t)*kron(zero_b,one_t)';
RHS_1 = [0 0 0 0 0 0 ; 0 0 0 1 0 0 ; 0 0 0 0 0 0 ; 0 1 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0];
RHS_2 = (1/2)*(kron(x,gm1) + kron(y,gm2));
isequal(LHS,RHS_1)
isequal(LHS,RHS_2)

%% Eq. 102
zero_b = [1 ; 0]; one_b = [0 ; 1]; one_t = [0 ; 1 ; 0];

LHS = kron(one_b,one_t)*kron(zero_b,one_t)';
RHS = [0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 1 0 0 0 0 ; 0 0 0 0 0 0];
isequal(LHS, RHS)
% LHS = kron(two_t,zero_b)*kron(zero_t,one_b)'; Original Qutrit-Qubit Interaction

%% Eq. 103
zero_b = [1 ; 0]; one_b = [0 ; 1]; one_t = [0 ; 1 ; 0];
x = [0 1 ; 1 0]; y = [0 -1i ; 1i 0];
gm4 = [0 0 1 ; 0 0 0 ; 1 0 0]; gm5 = [0 0 -1i ; 0 0 0 ; 1i 0 0];

LHS = kron(one_b,one_t)*kron(zero_b,one_t)' + kron(zero_b,one_t)*kron(one_b,one_t)';
RHS_1 = [0 0 0 0 0 0 ; 0 0 0 0 1 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 1 0 0 0 0 ; 0 0 0 0 0 0];
RHS_2 = (1/2)*(kron(gm5,y) + kron(gm4,x));
isequal(LHS,RHS_1)
isequal(LHS,RHS_2)
% LHS = kron(two_t,zero_b)*kron(zero_t,one_b)' + kron(zero_t,one_b)*kron(two_t,zero_b)'; Original Qutrit-Qubit Interaction

%% Eq. 104 - 1
one_b = [0 ; 1]; zero_t = [1 ; 0 ; 0]; two_t = [0 ; 0 ; 1];

LHS = kron(one_b,zero_t)*kron(one_b,two_t)';
RHS = [0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 1 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0];
isequal(LHS,RHS)

%% Eq. 104 - 2
one_b = [0 ; 1];one_t = [0 ; 1 ; 0]; two_t = [0 ; 0 ; 1];
z = [1 0 ; 0 -1]; gm6 = [0 0 0 ; 0 0 1 ; 0 1 0]; gm7 = [0 0 0 ; 0 0 -1i ; 0 1i 0];

LHS = (1/4)*(kron(eye(2),gm6) - kron(z,gm6) + 1i*kron(eye(2),gm7) - 1i*kron(z,gm7));
RHS_1 = [0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 1 ; 0 0 0 0 0 0];
RHS_2 = kron(one_b,one_t)*kron(one_b,two_t)';
isequal(LHS,RHS_1)
isequal(LHS,RHS_2)

%% Eq. 105
one_b = [0 ; 1]; zero_t = [1 ; 0 ; 0]; two_t = [0 ; 0 ; 1];
z = [1 0 ; 0 -1]; gm6 = [0 0 0 ; 0 0 1 ; 0 1 0];

LHS = kron(one_b,zero_t)*kron(one_b,two_t)' + kron(one_b,two_t)*kron(one_b,zero_t)';
RHS_1 = [0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 1 ; 0 0 0 0 0 0 ; 0 0 0 1 0 0];
RHS_2 = (1/2)*(kron(gm6,eye(2)) - kron(gm6,z));
isequal(LHS,RHS_1)
isequal(LHS,RHS_2)
% LHS = kron(one_t,one_b)*kron(two_t,one_b)' + kron(two_t,one_b)*kron(one_t,one_b)'; Original Qutrit-Qubit Interaction

%% Eq. 106
z = [1 0 ; 0 -1]; gm1 = [0 1 0 ; 1 0 0 ; 0 0 0]; gm2 = [0 -1i 0 ; 1i 0 0 ; 0 0 0];
zero_b = [1 ; 0]; zero_t = [1 ; 0 ; 0]; one_t = [0 ; 1 ; 0];

LHS = kron(zero_b,one_t)*kron(zero_b,zero_t)';
RHS_1 = [0 0 0 0 0 0 ; 1 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0];
RHS_2 = (1/4)*(kron(z,gm1) + kron(eye(2),gm1) - 1i*kron(z,gm2) - 1i*kron(eye(2),gm2));
isequal(LHS,RHS_1)
isequal(LHS,RHS_2)

%% Eq. 107
z = [1 0 ; 0 -1]; gm1 = [0 1 0 ; 1 0 0 ; 0 0 0]; gm2 = [0 -1i 0 ; 1i 0 0 ; 0 0 0];
zero_b = [1 ; 0]; zero_t = [1 ; 0 ; 0]; one_t = [0 ; 1 ; 0];

LHS = kron(zero_b,zero_t)*kron(zero_b,one_t)';
RHS_1 = [0 1 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0];
RHS_2 = (1/4)*(kron(z,gm1) + kron(eye(2),gm1) + 1i*kron(z,gm2) + 1i*kron(eye(2),gm2));
isequal(LHS,RHS_1)
isequal(LHS,RHS_2)

%% Eq. 108
z = [1 0 ; 0 -1]; gm1 = [0 1 0 ; 1 0 0 ; 0 0 0];
zero_b = [1 ; 0]; zero_t = [1 ; 0 ; 0]; one_t = [0 ; 1 ; 0];

LHS = kron(zero_b,one_t)*kron(zero_b,zero_t)' + kron(zero_b,zero_t)*kron(zero_b,one_t)';
RHS_1 = [0 1 0 0 0 0 ; 1 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0];
RHS_2 = (1/2)*(kron(z,gm1) + kron(eye(2),gm1));
isequal(LHS,RHS_1)
isequal(LHS,RHS_2)

%% Eq. 109
zero_b = [1 ; 0]; one_b = [0 ; 1];
zero_t = [1 ; 0 ; 0]; two_t = [0 ; 0 ; 1];
x = [0 1 ; 1 0]; y = [0 -1i ; 1i 0];
gm4 = [0 0 1 ; 0 0 0 ; 1 0 0]; gm5 = [0 0 -1i ; 0 0 0 ; 1i 0 0];

LHS = kron(zero_b,two_t)*kron(one_b,zero_t)';
RHS_1 = [0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 1 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0];
RHS_2 = (1/4)*(kron(x,gm4) + 1i*kron(y,gm4) - 1i*kron(x,gm5) + kron(y,gm5));
isequal(LHS,RHS_1)
isequal(LHS,RHS_2)

%% Eq. 110
zero_b = [1 ; 0]; one_b = [0 ; 1];
zero_t = [1 ; 0 ; 0]; two_t = [0 ; 0 ; 1];
x = [0 1 ; 1 0]; y = [0 -1i ; 1i 0];
gm4 = [0 0 1 ; 0 0 0 ; 1 0 0]; gm5 = [0 0 -1i ; 0 0 0 ; 1i 0 0];

LHS = kron(zero_b,two_t)*kron(one_b,zero_t)' + kron(one_b,zero_t)*kron(zero_b,two_t)';
RHS_1 = [0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 1 0 0 ; 0 0 1 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0];
RHS_2 = (1/2)*(kron(x,gm4) + kron(y,gm5));
isequal(LHS,RHS_1)
isequal(LHS,RHS_2)

%% Eq. 111
z = [1 0 ; 0 -1]; gm4 = [0 0 1 ; 0 0 0 ; 1 0 0]; gm5 = [0 0 -1i ; 0 0 0 ; 1i 0 0];
zero_b = [1 ; 0]; zero_t = [1 ; 0 ; 0]; two_t = [0 ; 0 ; 1];

LHS = kron(zero_b,two_t)*kron(zero_b,zero_t)';
RHS_1 = [0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 1 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0];
RHS_2 = (1/4)*(kron(z,gm4) + kron(eye(2),gm4) - 1i*kron(z,gm5) - 1i*kron(eye(2),gm5));
isequal(LHS,RHS_1)
isequal(LHS,RHS_2)

%% Eq. 112
z = [1 0 ; 0 -1]; gm4 = [0 0 1 ; 0 0 0 ; 1 0 0];
zero_b = [1 ; 0]; zero_t = [1 ; 0 ; 0]; two_t = [0 ; 0 ; 1];

LHS = kron(zero_b,two_t)*kron(zero_b,zero_t)' + kron(zero_b,zero_t)*kron(zero_b,two_t)';
RHS_1 = [0 0 1 0 0 0 ; 0 0 0 0 0 0 ; 1 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0];
RHS_2 = (1/2)*(kron(z,gm4) + kron(eye(2),gm4));
isequal(LHS,RHS_1)
isequal(LHS,RHS_2)

%% Eq. 113
one_b = [0 ; 1]; one_t = [0 ; 1 ; 0]; two_t = [0 ; 0 ; 1];

LHS = kron(one_b,one_t)*kron(one_b,two_t)';
RHS = [0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 1 ; 0 0 0 0 0 0];
isequal(LHS,RHS)

%% Eq. 114
one_b = [0 ; 1]; one_t = [0 ; 1 ; 0]; two_t = [0 ; 0 ; 1];

LHS = kron(one_b,one_t)*kron(one_b,two_t)' + kron(one_b,two_t)*kron(one_b,one_t)';
RHS = [0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 1 ; 0 0 0 0 1 0];
isequal(LHS,RHS)

%% Eq. 115
one_t = [0 ; 1 ; 0]; two_t = [0 ; 0 ; 1];
x = [0 1 ; 1 0]; z = [1 0 ; 0 -1];
gm1 = [0 1 0 ; 1 0 0 ; 0 0 0]; gm6 = [0 0 0 ; 0 0 1 ; 0 1 0]; gm8 = (1/sqrt(3))*[1 0 0 ; 0 1 0 ; 0 0 -2];

LHS = kron(kron(one_t,two_t'),x) + kron(kron(two_t,one_t'),x);
RHS_1 = [0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 1 ; 0 0 0 0 1 0 ; 0 0 0 1 0 0 ; 0 0 1 0 0 0];
RHS_2 = kron(gm6,x);
RHS_3 = (-1/2)*kron(z,gm1) + (1/2)*kron(eye(2),gm1) - (1/sqrt(3))*kron(x,gm8) + (1/3)*kron(x,eye(3)); % Slightly off due to rounding but still equal to LHS
isequal(LHS,RHS_1)
isequal(LHS,RHS_2)

%% Eq. 116
one_t = [0 ; 1 ; 0]; two_t = [0 ; 0 ; 1];
x = [0 1 ; 1 0]; gm6 = [0 0 0 ; 0 0 1 ; 0 1 0]; gm7 = [0 0 0 ; 0 0 -1i ; 0 1i 0];

LHS = kron(x,kron(one_t,two_t'));
RHS_1 = [0 0 0 0 0 0 ; 0 0 0 0 0 1 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 1 0 0 0 ; 0 0 0 0 0 0];
RHS_2 = (1/2)*kron(x,gm6 + 1i*gm7);
isequal(LHS,RHS_1)
isequal(LHS,RHS_2)

%% Eq. 117
one_t = [0 ; 1 ; 0]; two_t = [0 ; 0 ; 1];
x = [0 1 ; 1 0]; gm6 = [0 0 0 ; 0 0 1 ; 0 1 0];

LHS = kron(x,kron(one_t,two_t')) + kron(x,kron(two_t,one_t'));
RHS_1 = [0 0 0 0 0 0 ; 0 0 0 0 0 1 ; 0 0 0 0 1 0 ; 0 0 0 0 0 0 ; 0 0 1 0 0 0 ; 0 1 0 0 0 0];
RHS_2 = kron(x,gm6);
isequal(LHS,RHS_1)
isequal(LHS,RHS_2)

%% Eq. 118
zero_b = [1 ; 0]; one_b = [0 ; 1]; one_t = [0 ; 1 ; 0]; two_t = [0 ; 0 ; 1];
x = [0 1 ; 1 0]; y = [0 -1i ; 1i 0]; z = [1 0 ; 0 -1];
gm6 = [0 0 0 ; 0 0 1 ; 0 1 0]; gm7 = [0 0 0 ; 0 0 -1i ; 0 1i 0];

LHS = kron(zero_b,two_t)*kron(one_b,one_t)';
RHS_1 = [0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 1 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0];
RHS_2 = (1/4)*(kron(x,gm6) + 1i*kron(y,gm6) - 1i*kron(x,gm7) + kron(y,gm7));
RHS_3 = (1/4)*(kron(gm6,eye(2)) + kron(gm6,z) + 1i*kron(gm7,eye(2)) + 1i*kron(gm7,z));
isequal(LHS,RHS_1)
isequal(LHS,RHS_2)
isequal(LHS,RHS_3)
% LHS = kron(one_t,zero_b)*kron(two_t,zero_b)'; % Original Qutrit-Qubit Interaction

%% Eq. 119
zero_b = [1 ; 0]; one_t = [0 ; 1 ; 0]; two_t = [0 ; 0 ; 1];
z = [1 0 ; 0 -1]; gm6 = [0 0 0 ; 0 0 1 ; 0 1 0]; gm7 = [0 0 0 ; 0 0 -1i ; 0 1i 0];

LHS = kron(zero_b,one_t)*kron(zero_b,two_t)';
RHS_1 = [0 0 0 0 0 0 ; 0 0 1 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0];
RHS_2 = (1/4)*(kron(eye(2),gm6) + kron(z,gm6) + 1i*kron(eye(2),gm7) + 1i*kron(z,gm7));
isequal(LHS,RHS_1)
isequal(LHS,RHS_2)

%% Eq. 120
zero_b = [1 ; 0]; one_b = [0 ; 1];
zero_t = [1 ; 0 ; 0]; one_t = [0 ; 1 ; 0]; two_t = [0 ; 0 ; 1];
z = [1 0 ; 0 -1]; gm6 = [0 0 0 ; 0 0 1 ; 0 1 0];

LHS = kron(zero_b,one_t)*kron(zero_b,two_t)' + kron(zero_b,two_t)*kron(zero_b,one_t)';
RHS_1 = [0 0 0 0 0 0 ; 0 0 1 0 0 0 ; 0 1 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0];
RHS_2 = (1/2)*(kron(eye(2),gm6) + kron(z,gm6));
isequal(LHS,RHS_1)
isequal(LHS,RHS_2)
