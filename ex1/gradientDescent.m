function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    % h = X*theta;

    % n = length(theta);
    % for i = 1:n
    %    err = (X*theta - y).*X(:,i);
    %    theta(i) = theta(i) - alpha*sum(err)/m;
    %    % fprintf('theta %i: %f\n',i, theta(i));
    % end
   
    h = X*theta; % hypothesis
    % X' * (h - y) = sum((h - y) .* X)'
    theta = theta - alpha * (1 / m) * (X' * (h - y));

   
    % ============================================================
    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);
    
    % fprintf('cost:\n%f\n',J_history(iter));
end
end
