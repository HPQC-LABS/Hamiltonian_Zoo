test_a = zeros(50000,1); % Test A: maximum error between LHS - RHS
test_b = zeros(50000,1); % Test B: mean error between LHS - RHS, including only the non-zero elements (please double check this!)
test_c = zeros(50000,1); % Test C: variance in error between LHS - RHS, including only the non-zero elements (please double check this!)

% Note: This test works for quadratic combinations of x3, y3, and z3, but
% not linear combinations of them. Attempting linear combinations will
% cause this program to fail tests.

for k = 1:50000
n = 3;
   
LHS = -5000 - 5000i + 10000*rand(3) + 10000i*rand(3);

S{1} = [0 1 0 ; 1 0 1 ; 0 1 0];
S{2} = [0 -1i 0 ; 1i 0 -1i ; 0 1i 0];
S{3} = [1 0 0 ; 0 0 0 ; 0 0 -1];
S{4} = eye(3);

for ind1 = 1:4
    for ind2 = 1:4
        temp = S{ind1}*S{ind2};
        basis(:,sub2ind([4,4],ind1,ind2))=temp(:);
    end
end
coefficients = basis\LHS(:);

RHS = zeros(length(LHS));

index_outer = 1;
for ind1 = 1:4
    for ind2 = 1:4
            temp = coefficients(index_outer)*S{ind2}*S{ind1};
            RHS = RHS + temp;
            index_outer = index_outer + 1;
    end
end

test_a(k,1) = max(max(LHS - RHS));
test_b(k,1) = mean(mean(LHS(find(LHS)) - RHS(find(RHS))));
test_c(k,1) = var(var(LHS(find(LHS)) - RHS(find(RHS))));
end

