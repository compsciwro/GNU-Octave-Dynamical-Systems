% QUESTION 3(c): Numerical solution using ode45 for dQ/dt = Q(6 - Q), Q(0) = 4

% Define the model as an anonymous function
growth_model = @(t, Q) Q * (6 - Q);

% Define time span and initial condition
tspan = [0 5];
Q0 = 4;

% Solve using ode45
[t, Q] = ode45(growth_model, tspan, Q0);

% Plot the result
plot(t, Q,'color', [0 0 0.5], 'r-', 'LineWidth', 2);
xlabel('Time t');
ylabel('Q(t)');
title('Numerical Solution using ode45');
grid on;

% Set background colour to pink
set(gca, 'Color', [0.8 0.9 1]);   % Light baby blue plot background
set(gcf, 'Color', [0.8 0.9 1]);   % Light baby blue figure background (optional)

