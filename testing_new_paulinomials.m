function output = testing_new_paulinomials(n)
% Testing function for new_paulinomials.m
% This will test the function for random nxn matrices
% Note: Linear combinations do not pass without all Gell-Mann matrices (for any n).

test_a = zeros(1000,1); % Test B: maximum error between LHS - RHS
test_b = zeros(1000,1); % Test C: mean error between LHS - RHS, including only the non-zero elements (please double check this!)
test_c = zeros(1000,1); % Test D: variance in error between LHS - RHS, including only the non-zero elements (please double check this!)

factors = factor(n);

gell_mann_matrices_max = 1;
for ind = 1:length(factors)
    gell_mann_matrices{gell_mann_matrices_max} = generate_gell_mann(factors(ind));
    gell_mann_matrices{1,gell_mann_matrices_max}{1,factors(ind)^2} = eye(factors(ind));
    gell_mann_matrices_max = gell_mann_matrices_max + 1;
end

for k = 1:1000
LHS = -5000*(1 + 1i) + 10000*(rand(n) + 1i*rand(n));

coefficients = new_paulinomials(LHS,{});
RHS = zeros(length(LHS));

IND = ones([1 length(factors)]);
coefficients_ind = 1;

while IND(length(factors)) <= factors(length(factors))^2
    temp = eye(1);
    for ind = 1:length(factors)
        temp = kron(temp,gell_mann_matrices{1,ind}{1,IND(ind)});
    end
    
    temp = coefficients(coefficients_ind,1)*temp;
    coefficients_ind = coefficients_ind + 1;
    RHS = RHS + temp;
    
    IND(1) = IND(1) + 1;
    for ind = 1:length(IND)
        if IND(ind) > factors(ind)^2 && ind ~= length(IND)
            IND(ind + 1) = IND(ind + 1) + 1;
            IND(ind) = 1;
        end
    end    
end

test_a(k,1) = max(max(LHS - RHS));
test_b(k,1) = mean(mean(LHS(find(LHS)) - RHS(find(RHS))));
test_c(k,1) = var(var(LHS(find(LHS)) - RHS(find(RHS))));
end

output = [test_a, test_b, test_c];
end
