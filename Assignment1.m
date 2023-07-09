dt = 0.001;
tt = -0.5 : dt : .15; 
Fo = 8;
Z = sqrt(2)*(1-j); xx = real(Z*exp(2j*pi*Fo*tt)); 
plot (tt, xx), grid
title('SECTION of a SINUSOID'), xlabel('TIME (sec)')