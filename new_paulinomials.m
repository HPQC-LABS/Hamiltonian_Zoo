function output_pauli = new_paulinomials(H, S)
% This function takes in an nxn matrix and outputs a Paulinomial decomposition.
% For inputting:
% For Generalized Gell-Mann Matrices in increasing size of prime factors, please input {} for the S variable.
% For your own custom basis, please input a cell with each element containing a basis that you wish to use.
% Please input 1 basis per factor, for example if your matrix was
% 12x12 (and thus your prime factors are 2x2x3), input your 2x2 basis twice and 3x3 basis once.

% The output is as follows:
% Column 1 of the output represents the coefficients that are needed.
% The remaining columns (based on the number of prime factors) represents the basis matrices that were used in that term based on order of input.
% For example: for a 6x6 matrix using the default Gell-Mann matrices, one of the lines may be: 0.5 in column 1, 3 in column 2, and 5 in column 3,
% This would mean that the coefficient for that term is 0.5, and the term consists of: 
% the 3rd 2x2 Gell-Mann Matrix (Pauli z matrix) and the 5th 3x3 Gell-Mann matrix.

if isequal(S,{});
factors = factor(length(H));
gm_index = 1;
for i = 1:length(factors)
    S{gm_index} = generate_gell_mann(factors(i));
    S{1,gm_index}{1,factors(i)^2} = eye(factors(i));
    gm_index = gm_index + 1;
end
end


IND = ones([1 length(S)]);
max = [];
for i = 1:length(S)
    max = [max, length(S{1,i})];
end

while IND(1) <= max(1)
    temp = eye(1);
    for i = 1:length(IND)
        temp = kron(temp,S{1,i}{1,IND(i)});
    end
      
    basis_index = IND(1);
    for ind_outer = 2:1:length(IND)
        ind_coeff = 1;
        
        for ind_inner = 1:ind_outer - 1
            ind_coeff = ind_coeff*max(ind_inner);
        end
        
        basis_index = basis_index + ind_coeff*(IND(ind_outer) - 1);
    end
    
    basis(:,basis_index) = temp(:);
    basis = sparse(basis);
    
    IND(length(IND)) = IND(length(IND)) + 1;
    for i = length(IND):-1:1
        if IND(i) > max(i) && i ~= 1;
            IND(i) = 1;
            if i ~= 1
                IND(i - 1) = IND(i - 1) + 1;
            end
        end
    end
end

c=basis\H(:);
output_pauli = ones([1 length(S)]);
IND = ones([1 length(S)]);

while IND(length(S)) <= max(length(S))
    IND(1) = IND(1) + 1;
    for ind = 1:length(IND)
        if IND(ind) > max(ind) && ind ~= length(IND)
            IND(ind + 1) = IND(ind + 1) + 1;
            IND(ind) = 1;
        end
    end
    
    if IND(length(S)) <= max(length(S))
        output_pauli = [output_pauli ; IND];
    end
end
output_pauli = [c , output_pauli];
end
