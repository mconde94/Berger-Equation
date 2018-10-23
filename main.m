clc;
clear all;
global n d hx X
d=0.01;
ax=1; %x axis interval
n=100;
deltaT= 0.001; %t interval
t=0;
tMax=2;
hx=ax/(n-1);
X=linspace(0,1,n);
fi=exp(-16*(X-0.5).^2)-exp(-4);  %initial condition
while t<=tMax
    [fi  ] = simulacao( fi,t,deltaT);
    t=t+deltaT;
end
