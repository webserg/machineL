function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

h = X * theta;
delta = h - y;
theta_l = theta( 2:end );
J = sum( delta.^2 ) / (2 * m);
if lambda > 0
  J = J + ( lambda / (2*m) ) * sum( theta_l.^2 );
end
for j = 1:size(theta)
  grad(j) = sum((X*theta - y).*X(:,j)) / m;
  if(j>1)
    grad(j) = grad(j) +  ( lambda/m ) * theta(j);
  end
end



% =========================================================================

grad = grad(:);

end
