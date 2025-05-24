% Clear figure
clf;

% Define fine grid for nullclines
[x1, y1] = meshgrid(0:0.1:5, 0:0.1:5);
dx1 = x1 - x1.^2 - x1 .* y1;
dy1 = y1 - y1.^2 - 0.5 * x1 .* y1;

% Define coarse grid for directional field arrows
[x2, y2] = meshgrid(0:0.5:5, 0:0.5:5);
dx2 = x2 - x2.^2 - x2 .* y2;
dy2 = y2 - y2.^2 - 0.5 * x2 .* y2;

% Plot Direction Field arrows (magenta)
quiver(x2, y2, dx2, dy2, 0.6, 'color', [0.8 0 0.8], 'LineWidth', 1.2);
hold on;

% Plot Nullclines
contour(x1, y1, dx1, [0 0], 'LineColor', [1 0.41 0.7], 'LineWidth', 2.5); % x-nullcline (hot pink)
contour(x1, y1, dy1, [0 0], 'LineColor', [0.5 0 0.5], 'LineWidth', 2.5); % y-nullcline (purple)

% Plot steady states as black dots
plot([0 1 0 2/3], [0 0 1 1/3], 'ko', 'MarkerFaceColor', 'k', 'MarkerSize', 3);

% Add coordinate labels
text(0.1, -0.1, '(0, 0)', 'FontSize', 10, 'Color', 'k');
text(1.1, -0.1, '(1, 0)', 'FontSize', 10, 'Color', 'k');
text(0.1, 1.1, '(0, 1)', 'FontSize', 10, 'Color', 'k');
text(2/3 + 0.1, 1/3 + 0.1, '(2/3, 1/3)', 'FontSize', 10, 'Color', 'k');

% Dummy lines for legend
h1 = plot(NaN, NaN, '-', 'Color', [0.8 0 0.8], 'LineWidth', 1.2);    % direction
h2 = plot(NaN, NaN, '-', 'Color', [1 0.41 0.7], 'LineWidth', 2.5);  % x-nullcline
h3 = plot(NaN, NaN, '-', 'Color', [0.5 0 0.5], 'LineWidth', 2.5);   % y-nullcline
h4 = plot(NaN, NaN, 'ko', 'MarkerFaceColor', 'k', 'MarkerSize', 4);% steady state

legend([h1, h2, h3, h4], 'Direction Field', 'x-nullcline (hot pink)', 'y-nullcline (purple)', 'Steady states (black dots)', 'Location', 'northeast');

% Axes labels & title
xlabel('x');
ylabel('y');
title('Nullclines and Steady States for System (x, y)');
axis([0 5 0 5]);
grid on;

% Background color
baby_pink = [1 0.8 0.9];
set(gca, 'Color', baby_pink);
try
    set(gcf, 'Color', baby_pink);
catch
end


