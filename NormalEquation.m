%% Clear all data and close window
clear all
close all
clc

%% 
% Solve with normal equations:
% Load Data
data = csvread('ex1data2.txt');
X = data(:, 1:2);
y = data(:, 3);
m = length(y);

% Add intercept term to X
X = [ones(m, 1) X];

% Calculate the parameters from the normal equation
theta = normalEqn(X, y);

%% 
% Estimate the price of a 1650 sq-ft, 3 br house. 

price = 0; %
predict_data = [1 1650 3];
price = predict_data * theta;

fprintf('Predicted price of a 1650 sq-ft, 3 br house (using normal equations):\n $%f', price); 

% Display normal equation's result
fprintf('Theta computed from the normal equations:\n%f\n%f\n%f', theta(1),theta(2),theta(3));