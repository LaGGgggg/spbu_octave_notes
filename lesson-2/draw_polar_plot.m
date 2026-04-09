function draw_polar_plot()

  phi = linspace(0, 2 * pi, 1000);

  r = sin(phi) ./ phi;
  r(1) = 1;

  x = r .* cos(phi);
  y = r .* sin(phi);

  hold on;

  plot(x, y, 'b');
  plot(x(1), y(1), 'g', 'MarkerSize', 6);
  plot(x(end), y(end), 'r', 'MarkerSize', 6);

  hold off;

  grid on;
  axis equal;

endfunction
