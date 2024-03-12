%% lab 2 exercise 4
clear all;
close all;
clc;

binary = randi([0, 1], 200, 1);                 % a random binary vector is created

T_b = 1/1000000;                                   % Choose bit time. The bit time must be smaller than 
                                                % 1.95 microseconds.
Fc = 1/T_b;                                       %
                                        
type = 'manchesterNRZ';                           %Choose type of line coding

[encoded, fs] = lineCode(binary, type , T_b); 