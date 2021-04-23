disp('Running finding_dirac.m: ')
H = [0 1 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0]; % Eq. 90 of reproducing.m, |0b0t><0b1t|
finding_dirac(H) % Expected: Found a Qubit - Qutrit Interaction : 0 0 0 1

disp('Running new_paulinomials.m: ')
H = [0 1 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0 ; 0 0 0 0 0 0]; % Eq. 90 of reproducing.m, (1/4)*(kron(z,gm1) + kron(eye(2),gm1) + 1i*kron(z,gm2) + 1i*kron(eye(2),gm2))
new_paulinomials(H,{})

disp('Running generate_gell_mann.m: ')
generate_gell_mann(3) % Expected: The 3x3 Gell-Mann matrices

disp('Running generate_standard_basis.m: ')
generate_standard_basis(3) % Expected: B1 - B9 in reproducing.m

disp('Running testing_new_paulinomials.m: ')
testing_new_paulinomials(6) % Expected: Values in the 1e-12 to 1e-13 range throughout
