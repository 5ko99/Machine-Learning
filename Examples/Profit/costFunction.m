function J = costFunction(X,y,theta)
m=length(X);

prediction = X*theta;
sqrErrors = (prediction-y).^2;
J=1/(2*m) * sum(sqrErrors);
end