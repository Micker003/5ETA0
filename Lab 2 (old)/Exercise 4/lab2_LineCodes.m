%% lab 2 exercise 4
clear all;
close all;
clc;

binary = randi([0, 1], 200, 1);                 % a random binary vector is created

T_b = [...];                                   % Choose bit time. The bit time must be smaller than 
                                                % 1.95 microseconds.
Fc = ...;                                       %
                                        
type = '...';                           %Choose type of line coding

[encoded, fs] = lineCode(binary, type , T_b); 