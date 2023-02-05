clc;
clear all;
close all
% Clearing interface

syms t a
% Symbolic so it doesn't mess with our variables

x1 = 200*t;
x2 = 808-100*(cos(a))*t;
y2 = 50*(sin(a))*t-0.8*(t^2);
y1 = 80*t-16*(t^2);
% Defining variables

% x1=x2, y1=y2 for being able to perform collision
eqn= [x1==x2, y1==y2];
Solution= solve(eqn,[t a]);

% It was giving the answers in wrong format thanks to struct so I organised
% it
Angle=double(Solution.a)
Time=double(Solution.t)