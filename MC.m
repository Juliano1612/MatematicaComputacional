format long

n = 0;

ax1 = subplot(2,2,1);
ax2 = subplot(2,2,2);
ax3 = subplot(2,2,3);
ax4 = subplot(2,2,4);

x1 = linspace(0 , pi/2);
x2 = linspace(pi/2, pi);
x3 = linspace(pi, 3*pi/2);
x4 = linspace(3*pi/2, 2*pi);

y1 = sin(x1);
y2 = sin(x2);
y3 = sin(x3);
y4 = sin(x4);

z1 = -mcos(x2);
z2 = mcos(x1);
z3 = mcos(x2);
z4 = -mcos(x1);

figure

plot(ax1, x1, y1, 'c*', x1, z1, '-o');
title(ax1, '0 a 90º');
plot(ax2, x2, y2, 'c*', x2, z2, '-o');
title(ax2, '90º a 180º');
plot(ax3, x3, y3, 'c*', x3, z3, '-o');
title(ax3, '180 a 270º');
plot(ax4, x4, y4, 'c*', x4, z4, '-o');
title(ax4, '270 a 360º');

count = 0;
accumulator = 0;
while n < pi/2
    disp(sin(n));
    %disp(msin(n));
    disp(-mcos(n+pi/2));
    accumulator = accumulator + abs(sin(n) - (-mcos(n)));
    n = n + pi/100;
    count = count +1;
end % while
