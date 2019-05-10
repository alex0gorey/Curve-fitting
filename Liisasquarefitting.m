%Data Geeeration within a function

%Setup base function

data=@(x)sin(x)  

%set X variables
 xvalues= [-1 : 0.1 : 10];
 
 %set y values
 
yvalues= data(xvalues);

for i= 1:max(size(xvalues));
    
        r2 = random('Normal',0,1);

        %noise = add rndm xvalues,yvalues between [0.1:1]

      
        noised (i)= yvalues(i)+r2;
        
end

% %fit to function we want
fun=@(x, noised)x(1)*sin(x(2)*noised)
 x0 = [1000,-1];
coeff= lsqcurvefit(fun,x0,xvalues,noised)

 plot (xvalues, noised, 'b-')
 hold on 
 plot (xvalues, fun(coeff,xvalues), 'r')
 

 
 %  plot (xvalues, noised, 'ko', times, fun(x,times),'b-');

