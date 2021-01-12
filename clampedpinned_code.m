% Description:
% This Code Generates Mode Shape Curves for Bending Vibration
% In a Beam
% GO CRAAAZYYY!!!

% Defining Coefficients Co-relation
a1 = 1;
a2 = a1;
a4 = -a1;
a3 = a4;

% Variables

from_mode = 1;
to_mode = 4;
coeff = a3; % Select which coefficient you want to plot for
l = 1;

% DONT TOUCH ANYTHING BELOW THIS LINE For Fucks Sake
% =======================================


fprintf("\n\nPlotting from Mode Shape %d to Mode Shape %d\n\n", from_mode, to_mode)

for i = from_mode:to_mode
    b(i) = pi/4 + i*pi;
end



syms x;
h = 1;
for i = from_mode:to_mode
	ah = cosh(b(i)*l);
    a = cos(b(i)*l);
    bh = sinh(b(i)*l);
    bruh = sin(b(i)*l); % Epic Bruh Function =}
    ax = cos(b(i)*x*l);
    axh = cosh(b(i)*x*l);
    bx = sin(b(i)*x*l);
    bxh = sinh(b(i)*x*l);

    f(x) = coeff*[((ah - a)*(bxh-bx)/(bh - bruh)) - axh + ax];


    fplot(f, [0,1])
    hold on
    list_of_legends_lmao(h) = string("Mode Shape "+ i);
    h = h+1;
end
legend(list_of_legends_lmao)
title("Mode Shapes Plotted Against Length Ratio")
xlabel("x/l")
ylabel("Mode Shape")

hold off
