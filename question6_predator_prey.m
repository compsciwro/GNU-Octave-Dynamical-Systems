% QUESTION 6(b): Predator-Prey model simulation using ode45

% Define the system of equations as a function
predator_prey = @(t, Y) [
    Y(1) - 0.5 * Y(1) * Y(2);       % dx/dt = x - 0.5xy
    -0.75 * Y(2) + 0.25 * Y(1) * Y(2) % dy/dt = -0.75y + 0.25xy
];

% Initial populations: [Prey x0, Predator y0]
Y0 = [10; 5];

% Time span
tspan = [0 30];

% Solve the system
[t, sol] = ode45(predator_prey, tspan, Y0);

% Define purple color tones
light_purple = [0.7 0.5 0.9];     % for prey
deep_purple = [0.4 0 0.5];        % for predator
background_purple = [0.95 0.9 1]; % background

% Plot results using purple tones
plot(t, sol(:,1), '-', 'Color', light_purple, 'LineWidth', 2); hold on;
plot(t, sol(:,2), '-', 'Color', deep_purple, 'LineWidth', 2);

xlabel('Time t');
ylabel('Population');
title('Predator-Prey Model: Time Evolution of x(t) and y(t)');

legend('Prey (x)', 'Predator (y)');

% Add grid and background color
grid on;
set(gca, 'Color', background_purple);
try
    set(gcf, 'Color', background_purple);
catch
    warning('Could not set figure background color');
end

