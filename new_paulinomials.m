function c = new_paulinomials(H)
factors = factor(length(H));
assert( factors(length(factors)) <= 5, 'This code cannot accept a matrix whose dimensions contain a prime factor greater than 5.');
assert( length(factors) <= 13, 'This code cannot accept a matrix whose dimensions contain more than 13 prime factors.');

for i = 1:length(factors)
    if factors(i) == 2
        sigma = generate_gell_mann(2);
        sigma{4} = eye(2);
    elseif factors(i) == 3
        m = generate_gell_mann(3);
        m{9} = eye(3);
    elseif factors(i) == 5
        five = generate_gell_mann(5);
        five{25} = eye(5);
    end
end

IND = ones([1 length(factors)]);

max = [];
for i = 1:length(factors)
    if factors(i) == 2
        max = [max, 4];
    elseif factors(i) == 3
        max = [max, 9];
    elseif factors(i) == 5
        max = [max, 25];
    end
end

while IND(1) <= max(1)
    temp = eye(1);
    for i = 1:length(IND)
        if factors(i) == 2
            temp = kron(temp,sigma{IND(i)});
        elseif factors(i) == 3
            temp = kron(temp,m{IND(i)});
        elseif factors(i) == 5
            temp = kron(temp,five{IND(i)});
        end
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
end
