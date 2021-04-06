function c = new_paulinomials(H)
factors = factor(length(H));
assert( factors(length(factors)) <= 5, 'This code cannot accept a matrix whose dimensions contain a prime factor greater than 5.');
assert( length(factors) <= 13, 'This code cannot accept a matrix whose dimensions contain more than 13 prime factors.');

sigma{1}=[0 1; 1 0];
sigma{2}=[0 -1i; 1i 0];
sigma{3}=[1 0 ; 0 -1];
sigma{4}=eye(2);

m{1}=[0 1 0;1 0 0;0 0 0];
m{2}=[0 -1i 0;1i 0 0;0 0 0];
m{3}=[1  0 0;0 -1 0;0 0 0];
m{4}=[0 0 1;0 0 0;1 0 0];
m{5}=[0  0 -1i;0  0  0; 1i 0  0];
m{6}=[0 0 0;0 0 1;0 1 0];
m{7}=[0  0  0;0  0 -1i;0 1i  0];
m{8}=[1 0 0;0 1 0;0 0 -2]/sqrt(3);
m{9}=eye(3);

five{1} = [0 2 0 0 0 ; 2 0 sqrt(6) 0 0 ; 0 sqrt(6) 0 sqrt(6) 0 ; 0 0 sqrt(6) 0 2 ; 0 0 0 2 0];
five{2} = [0 -2i 0 0 0 ; 2i 0 -sqrt(6)*1i 0 0 ; 0 sqrt(6)*1i 0 -sqrt(6)*1i 0 ;  0 0 sqrt(6)*1i 0 -2i ; 0 0 0 2i 0];
five{3} = [2 0 0 0 0 ; 0 1 0 0 0 ; 0 0 0 0 0 ; 0 0 0 -1 0 ; 0 0 0 0 -2];
five{4} = eye(5);

IND = ones([1 length(factors)]);

max = [];
for i = 1:length(factors)
    if factors(i) == 2
        max = [max, 4];
    elseif factors(i) == 3
        max = [max, 9];
    elseif factors(i) == 5
        max = [max, 4];
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

c=round(basis\H(:),13,'decimals');
end
