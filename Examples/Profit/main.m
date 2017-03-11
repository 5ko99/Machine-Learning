data = load ("data.txt");
fprintf('Ploting Data... \n');
X = data(:,1);
y= data(:,2);
m=length(y);

plot(X,y,'rx','MarkerSize', 10);
xlabel('Population in 10,000s');
ylabel('Profit of $10, 000s');

X = [ones(m, 1), data(:,1)]; % Add a column of ones to x
theta = zeros(2, 1); % initialize fitting parameters

% Some gradient descent settings
iterations = 1500;
alpha = 0.01;

% compute and display initial cost
costFunction(X, y, theta);

theta = gradientDescent(X, y, theta, alpha, iterations);

% print theta to screen
fprintf('Theta found by gradient descent: ');
fprintf('%f %f \n', theta(1), theta(2));
plot(X(:,2), X*theta, '-');
legend('Training data', 'Linear regression');


% Predict values for population sizes of 35,000 and 70,000
predict1 = [1, 3.5] *theta;
fprintf('For population = 35,000, we predict a profit of %f\n',...
    predict1*10000);
predict2 = [1, 7] * theta;
fprintf('For population = 70,000, we predict a profit of %f\n',...
    predict2*10000);