function draw_humps_plot()

  x = linspace(0, 2, 1000);
  y = humps(x);

  [y_max, x_max_index] = max(y);
  x_max = x(x_max_index);

  indexes = find((y >= 20) & (y <= 40));

  hold on;

  plot(x, y);
  plot(x_max, y_max, 'y', 'MarkerSize', 8);
  plot(x(indexes), y(indexes), '*g', 'MarkerSize', 2);

  hold off;

  grid on;

  return;

endfunction
