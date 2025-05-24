% QUESTION 4(a): Numerical solution for logistic model using ode45

% Define the logistic model
logistic_model = @(t, Q) 0.8 * Q * (1 - Q / 400);

% Time span and initial population
tspan = [0 30];
Q0 = 20;

% Solve using ode45
[t, Q] = ode45(logistic_model, tspan, Q0);

% Plot the solution
plot(t, Q, 'color', [1 0.55 0], 'LineWidth', 2);
hold on;

% Plot equilibrium and inflection points manually
plot([0 30], [0 0], 'color', [0.2 0.8 0.2], 'k--');            % Q = 0 (unstable)
plot([0 30], [200 200], 'color', [1 0.41 0.71],'r--');        % Inflection point
plot([0 30], [400 400], 'color', [0.53 0.81 0.92], 'g--');        % Carrying capacity

% Labels
xlabel('Time (weeks)');
ylabel('Population Q(t)');
title('Logistic Growth: Numerical Solution with Equilibria');
legend('Q(t)', 'Q = 0', 'Q = 200 (inflection)', 'Q = 400 (equilibrium)', ...
       'Location', 'southeast');
grid on;

% Set background colour to pink
set(gca, 'Color', [1 1 0.8]);   % Light yellow plot background
set(gcf, 'Color', [1 1 0.8]);
