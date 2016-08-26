M = 1000;
f = zeros(1, M);
l = 20;
f(M/2-l:M/2+l) = 1;
F = fft(f);
Fc = fftshift(F);
rFc = real(Fc);
iFc = imag(Fc);
subplot(2,1,1),plot(abs(Fc));
subplot(2,1,2),plot(atan(iFc./rFc));