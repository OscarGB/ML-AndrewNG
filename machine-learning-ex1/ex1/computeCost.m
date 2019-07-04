function J = computeCost(X, Y, Theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, Y, Theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and Y

% Initialize some useful values
m = length(Y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

% Obtain the predictions
Hypothesis = X*Theta;

% Obtain the error between the real and the predicted values
ErrorForEachRow = Hypothesis - Y;

% Obtain the sum of all the cuadratic errors (visual way)
%CuadraticError = ErrorForEachRow .^ 2;
%cuadraticErrorSum = ones(1,m) * CuadraticError;

% Obtain the sum of all the cuadratic errors (vectoriced way)
cuadraticErrorSum = ErrorForEachRow' * ErrorForEachRow; 

% Obtain the cost value
J = cuadraticErrorSum / (2*m);

% =========================================================================

end
