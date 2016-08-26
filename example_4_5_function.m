function [filtroG] = filtroG(L,sig)
V=-(L-1)/2:1:(L-1)/2; %________________
o=ones(1,L); %______________________
x=o'*V; %______________________
y=-V'*o; %______________________
g=exp(-(x.^2)/(2*sig^2)).*exp(-(y.^2)/(2*sig^2));
figure(gcf);surf(g)
%surfc(g)
end