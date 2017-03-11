function [theta] = gradientDescent (X,y,theta,alpha,numOfIter);

m= length(y);

for i= 1:numOfIter

  t = zeros(2,1);
  J = costFunction(X, y, theta); %Изчисляваме с cost function

  t = theta - ((alpha*((theta'*X') - y'))*X/m)';
  theta = t;
  
  J1 = costFunction(X, y, theta);
  
   if(J1>J), %Ако преди това costFunction е по-малка от сегашната връщаме греешка за грешно alpha
    break,fprintf('Wrong alpha');
      else if(J1==J) %Ako са равни излизаме от цикъла(това означава че минумма е намерен)
        break;
  end;



 
end;
end;