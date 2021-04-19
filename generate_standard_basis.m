function S = generate_standard_basis(n)
% This function generates the standard basis according to the link
% https://math.stackexchange.com/a/4034168/202425
S_index = 1;
for j = 1:n
    S{S_index} = zeros(n);
    S{S_index}(j,j) = 1;
    S_index = S_index + 1;
    
    for i = 1:j - 1
        S{S_index} = zeros(n);
        S{S_index}(i,j) = 1; S{S_index}(j,i) = 1;
        S_index = S_index + 1;
        
        S{S_index} = zeros(n);
        S{S_index}(i,j) = 1; S{S_index}(j,i) = -1;
        S{S_index} = S{S_index}*1i;
        S_index = S_index + 1;
    end
end

end