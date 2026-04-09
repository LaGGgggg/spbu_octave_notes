function draw_mobius_plot()

  u_raw = linspace(0, 2 * pi, 100);
  v_raw = linspace(-1, 1, 100);

  [u, v] = meshgrid(u_raw, v_raw);

  x = (1 + v / 2 .* cos(u / 2)) .* cos(u);
  y = (1 + v / 2 .* cos(u / 2)) .* sin(u);
  z = v / 2 .* sin(u / 2);

  surf(x, y, z);

  axes equal;

endfunction
