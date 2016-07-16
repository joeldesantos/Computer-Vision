x = [zeros(1, 10) ones(1, 7) zeros(1, 10)];
y = fft(x);
figure;
subplot(2, 1, 1);
stem(x);
subplot(2, 1, 2);
plot(abs(y));
