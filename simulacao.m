function [fi  ] = simulacao( fi,t,deltaT)
global n d hx X
fiNovo = fi;
for i = 2:n
    if i==n
        fiNovo(i) = fi(i) + exp(-2*t)*deltaT;
    else
        fiNovo(i) = fi(i)+deltaT*(-fi(i)*(fi(i+1)-fi(i-1))/(2*hx) + d*(fi(i+1)-2*fi(i)+fi(i-1))/(hx^2));
    end
end
fi = fiNovo;
plot(X,fiNovo);
xlabel('x (m)');
ylabel('Fi');
str = sprintf('Tempo %f (s)',t);
title(str);
pause(0.001);
end

