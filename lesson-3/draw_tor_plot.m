function draw_tor_plot(r, R)

  phi_raw = linspace(0, 2 * pi, 100);
  psi_raw = linspace(-pi, pi, 100);

  [phi, psi] = meshgrid(phi_raw, psi_raw);

  x = (R + r * cos(psi)) .* cos(phi);
  y = (R + r * cos(psi)) .* sin(phi);
  z = r * sin(psi);

  surf(x, y, z);

  axes equal;

endfunction
