function draw_interval_plot(s)

  a = 1 / 4;
  b = 1/ 16;
  m = 8;
  n = 8;

  t = linspace(-5, 5, 1000);

  x = cos(t) - a * cos(m * t) + b * sin(n * t);
  y = sin(t) + a * sin(m * t) + b * cos(n * t);

  hold on;

  for k = 1:s
    plot(x / k, y / k, 'b');
  endfor

  hold off;

  grid on;
  axis equal;

endfunction
