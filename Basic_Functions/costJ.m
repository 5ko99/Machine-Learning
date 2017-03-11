function J = costJ(X,y,theta)
  
  % X is the "design matrix" contains our traning examples
  % y is the class labels
  
  m= size (X,1);         %number of traning examples
  predictions = X*theta; %predictions of hypothesis of all m examples
  sqrErrors = (predictions-y).^2; %sqared errors
  
  J=1/(2*m) * sum (sqrErrors);