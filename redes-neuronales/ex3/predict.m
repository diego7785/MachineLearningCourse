function p = predict(Theta_1, Theta_2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta_1, Theta_2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta_1, Theta_2)

% Useful values
m = size(X, 1);
num_labels = size(Theta_2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%


a_1 = [ones(m, 1) X];
a_2 = sigmoid(a_1*Theta_1');

m2 = size(a_2,1);
z = [ones(m2,1) a_2];
a_3 = sigmoid(z*Theta_2');

h = a_3;

maxV = zeros(size(h,1),1);
[maxV,p] = max(h,[],2);


% =========================================================================


end
