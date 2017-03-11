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



    t = zeros(2,1);
    J = computeCost(X, y, theta); %Изчисляваме с cost function
    t = theta - ((alpha*((theta'*X') - y'))*X/m)'; %Изчисляваме theta temp
    theta = t; %Салгаме данните до theta temp в tetha
    J1 = computeCost(X, y, theta); %Изчисляваме costFunction с новата theta

    if(J1>J), %Ако преди това costFunction е по-малка от сегашната връщаме греешка за грешно alpha
    break,fprintf('Wrong alpha');
      else if(J1==J) %Ako са равни излизаме от цикъла(това означава че минумма е намерен)
        break;
  end;



    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
