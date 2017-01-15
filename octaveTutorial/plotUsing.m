x = linspace(0, 10, 100);
y = sin(x);
plot(x, y);
disp ("press return to continue") 
pause () ;
hold off;
x = linspace(0, 2*pi, 50);
y = sin(x);
plot(x, y, '+1;sin(x);');
hold on;
x = linspace(0, 2*pi, 100);
y = sin(x);
y2 = cos(x);
plot(x, y, '+1;sin(x);', "markersize", 10, x, y2, ";cos(x);", "markersize", 5, "marker", '*');