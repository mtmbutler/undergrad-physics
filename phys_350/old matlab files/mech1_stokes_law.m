clf

order = 10;
t = 0:.01:4;

for alpha = 1:order
    v = (alpha-1).*(exp(-t))+1;
    plot(t, v);
    hold on;
end

grid on;

xlabel('tn');
ylabel('vn');