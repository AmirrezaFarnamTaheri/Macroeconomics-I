% Define the matrices A and B
A = [1 0 0 0; 0 1 0 0; 0 0 1 0; 0 0 0 1];
B = [-0.228 0.231 0.932 -0.171; 2.522 -2.547 0.932 2.753; 0 0 -1.053 0; -0.990 1 0 1];

% Compute A^{-1}
A_inv = inv(A);

% Compute A^{-1}B
A_inv_B = A_inv * B;

% Compute the eigenvalues and eigenvectors of A^{-1}B
[eigenvectors, eigenvalues] = eig(A_inv_B);

% Display the eigenvalues and eigenvectors as pairs
for i = 1:size(eigenvalues, 1)
	eigenvalue = eigenvalues(i, i);
	eigenvector = eigenvectors(:, i);
	disp(['Eigenvalue: ', num2str(eigenvalue)]);
	disp(['Eigenvector: ', num2str(eigenvector')]);
	disp(' ');
end