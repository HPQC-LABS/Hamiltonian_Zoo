function S = generate_gell_mann(n)
assert(n >= 2, 'Invalid matrix size.');

index = 1;

for i = 1:n
    diagonal_done = false;
    for j = i+1:n
        S{index} = zeros(n,n);
        S{index}(j,i) = 1;
        S{index}(i,j) = 1;
        index = index + 1;
        
        S{index} = zeros(n,n);
        S{index}(i,j) = -1i;
        S{index}(j,i) = 1i;
        index = index + 1;
        
        if i <= n - 1 && diagonal_done == false
            S{index} = zeros(n,n);
            for j = 1:i
                S{index}(j,j) = 1;
            end
        
            S{index}(i+1, i+1) = -i;
            S{index} = S{index}*sqrt(2/(i*(i+1)));
            index = index + 1;
            diagonal_done = true;
        end  
    end

end
end