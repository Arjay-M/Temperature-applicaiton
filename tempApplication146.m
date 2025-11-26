%temperature application
%define the constants
Ti=70;
Tb=170;

%diff eq: dT/dt = (Tb-T)/10
%solve the diff eq using ode45
%for 0-10 seconds
[t,T] = ode45(@(t,T) (Tb-T)/10, [0 10],Ti);
L = length(T);
fprintf("The room temp after 10 sesonds is %.2f\n",(T(L)))

%for 0-10 seconds
[t,T] = ode45(@(t,T) (Tb-T)/10, [0 20],Ti);
L = length(T);
fprintf("The room temp after 20 sesonds is %.2f°F\n",(T(L)))

%for 0-10 seconds
[t,T] = ode45(@(t,T) (Tb-T)/10, [0 40],Ti);
L = length(T);
fprintf("The room temp after 40 sesonds is %.2f°F\n",(T(L)))

%how long does it take tp get to 160f?
near160F = T>159.2 & T<160;
time160F = t(near160F);
fprintf("The time it takes to get to 160F %.2f seconds°F\n",time160F)

%plot the function for the first 40 seconds
%for the degrees symbol, the direct input cmd is ALT + 248
plot(t,T)
ylim([0 180])
title("Temperature application")
xlabel("Time(s)")
ylabel("Temperature(°F)")
