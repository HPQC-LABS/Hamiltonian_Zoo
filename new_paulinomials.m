function output_pauli = new_paulinomials(H)
% This function takes in an nxn matrix and outputs a Paulinomial decomposition.
% The output is as follows:
% Column 1 of the output represents the coefficients that are needed.
% The remaining columns (based on the number of prime factors) represents the Gell-Mann matrices that were used in that term.
% For example: for a 6x6 matrix, one of the lines may be: 0.5 in column 1, 3 in column 2, and 5 in column 3,
% This would mean that the coefficient for that term is 0.5, and the term consists of: 
% the 3rd 2x2 Gell-Mann Matrix (Pauli z matrix) and the 5th 3x3 Gell-Mann matrix.

factors = factor(length(H));
assert( length(factors) <= 13, 'This code cannot accept a matrix whose dimensions contain more than 13 prime factors.');

gm_index = 1;
for i = 1:length(factors)
    S{gm_index} = generate_gell_mann(factors(i));
    S{1,gm_index}{1,factors(i)^2} = eye(factors(i));
    gm_index = gm_index + 1;
end

IND = ones([1 length(factors)]);

max = [];
for i = 1:length(factors)
    max = [max, factors(i)^2];
end

while IND(1) <= max(1)
    temp = eye(1);
    for i = 1:length(IND)
        temp = kron(temp,S{1,i}{1,IND(i)});
    end
    
    switch length(factors)
        case 1
            basis(:,IND(1))=temp(:);
        case 2
            basis(:,sub2ind(max,IND(1),IND(2)))=temp(:);
        case 3
            basis(:,sub2ind(max,IND(1),IND(2),IND(3)))=temp(:);
        case 4
            basis(:,sub2ind(max,IND(1),IND(2),IND(3),IND(4)))=temp(:);
        case 5
            basis(:,sub2ind(max,IND(1),IND(2),IND(3),IND(4),IND(5)))=temp(:);
        case 6
            basis(:,sub2ind(max,IND(1),IND(2),IND(3),IND(4),IND(5),IND(6)))=temp(:);
        case 7
            basis(:,sub2ind(max,IND(1),IND(2),IND(3),IND(4),IND(5),IND(6),IND(7)))=temp(:);
        case 8
            basis(:,sub2ind(max,IND(1),IND(2),IND(3),IND(4),IND(5),IND(6),IND(7),IND(8)))=temp(:);
        case 9
            basis(:,sub2ind(max,IND(1),IND(2),IND(3),IND(4),IND(5),IND(6),IND(7),IND(8),IND(9)))=temp(:);
        case 10
            basis(:,sub2ind(max,IND(1),IND(2),IND(3),IND(4),IND(5),IND(6),IND(7),IND(8),IND(9),IND(10)))=temp(:);
        case 11
            basis(:,sub2ind(max,IND(1),IND(2),IND(3),IND(4),IND(5),IND(6),IND(7),IND(8),IND(9),IND(10),IND(11)))=temp(:);
        case 12
            basis(:,sub2ind(max,IND(1),IND(2),IND(3),IND(4),IND(5),IND(6),IND(7),IND(8),IND(9),IND(10),IND(11),IND(12)))=temp(:);
        case 13
            basis(:,sub2ind(max,IND(1),IND(2),IND(3),IND(4),IND(5),IND(6),IND(7),IND(8),IND(9),IND(10),IND(11),IND(12),IND(13)))=temp(:);
    end
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
output_pauli = ones([1 length(factors)]);
IND = ones([1 length(factors)]);

while IND(length(factors)) <= factors(length(factors))^2
    IND(1) = IND(1) + 1;
    for ind = 1:length(IND)
        if IND(ind) > factors(ind)^2 && ind ~= length(IND)
            IND(ind + 1) = IND(ind + 1) + 1;
            IND(ind) = 1;
        end
    end
    
    if IND(length(factors)) <= factors(length(factors))^2
        output_pauli = [output_pauli ; IND];
    end
end
output_pauli = [c , output_pauli];
end
