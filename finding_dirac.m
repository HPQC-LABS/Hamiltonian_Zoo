function finding_dirac(H)
    % Test Hamiltonians to find possible Dirac notations
    % Can test for 4-level and 6-level systems
    % Will display the type of interaction and a line of 4 numbers: a b c d
    % This represents the Dirac Notation | ab > < cd |
    dirac_found = 0;
    B{1} = [1 ; 0]; B{2} = [0 ; 1];
    T{1} = [1 ; 0 ; 0]; T{2} = [0 ; 1 ; 0]; T{3} = [0 ; 0 ; 1];
    
    % 4-level
    if isequal(size(H),[4 4])
        for k1 = 1:2
            for k2 = 1:2
                for k3 = 1:2
                    for k4 = 1:2
                        H_compare = kron(B{k1},B{k2})*kron(B{k3},B{k4})';
                        if isequal(H_compare,H)
                            disp('Found a Qubit - Qubit Interaction');
                            dirac = [k1-1 , k2-1 , k3-1 , k4-1]
                            dirac_found = 1;
                        end
                    end
                end
            end
        end
    
    % 6-level
    elseif isequal(size(H),[6 6])
        % Case 1: qubit, then qutrit
        for k1 = 1:2
            for k2 = 1:3
                for k3 = 1:2
                    for k4 = 1:3
                        H_compare = kron(B{k1},T{k2})*kron(B{k3},T{k4})';
                        if isequal(H_compare,H)
                            disp('Found a Qubit - Qutrit Interaction');
                            dirac = [k1-1 , k2-1 , k3-1 , k4-1]
                            dirac_found = 1;
                        end
                    end
                end
            end
        end
    
        % Case 2: qutrit, then qubit
        for k1 = 1:3
            for k2 = 1:2
                for k3 = 1:3
                    for k4 = 1:2
                        H_compare = kron(T{k1},B{k2})*kron(T{k3},B{k4})';
                        if isequal(H_compare,H)
                            disp('Found a Qutrit - Qubit Interaction');
                            dirac = [k1-1 , k2-1 , k3-1 , k4-1]
                            dirac_found = 1;
                        end
                    end
                end
            end
        end
    
    else
        disp('Invalid Matrix.');
    end
    
    if isequal(dirac_found, 0)
        disp('Nothing was found.');
    end
    
end