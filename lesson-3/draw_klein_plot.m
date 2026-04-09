function draw_klein_plot(r)

  u_raw = linspace(0, 2 * pi, 100);
  v_raw = linspace(0, 2 * pi, 100);

  [u, v] = meshgrid(u_raw, v_raw);

  x = (r + cos(u / 2) .* sin(v) - sin(u / 2) .* sin(2 * v)) .* cos(u);
  y = (r + cos(u / 2) .* sin(v) - sin(u / 2) .* sin(2 * v)) .* sin(u);
  z = sin(u / 2) .* sin(v) + cos(u / 2) * sin(2 * v);

  surf(x, y, z);

  axes equal;

endfunction
