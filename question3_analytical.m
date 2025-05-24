% QUESTION 3(b): Analytical solution plot for dQ/dt = Q(6 - Q), Q(0) = 4

% Define the time range first
t = linspace(0, 5, 100);  % 100 points between 0 and 5

% Define the analytical solution as an inline function
analytic_Q = @(t) 6 ./ (1 + ((6 - 4) / 4) * exp(-6 * t));  % General solution using Q(0) = 4

% Evaluate the function over time
q_vals = analytic_Q(t);

% Plot the results
plot(t, q_vals,'color', [0 0.5 0.4], 'b-', 'LineWidth', 2); %Deep teal green
xlabel('Time t');
ylabel('Q(t)');
title('Analytical Solution: dQ/dt = Q(6 - Q), Q(0) = 4');
grid on;

% Set background colour to pink
set(gca, 'Color', [0.9 1 0.9]);  % Light pink axes background
set(gcf, 'Color', [0.9 1 0.9]);  % Light pink figure background
