function draw_helicoid_plot(rho_max, alpha, theta_max)

  rho_raw = linspace(-rho_max, rho_max, 100);
  theta_raw = linspace(-theta_max, theta_max, 100);

  [rho, theta] = meshgrid(rho_raw, theta_raw);

  x = rho .* cos(theta);
  y = rho .* sin(theta);
  z = alpha * theta;

  surf(x, y, z);

  axes equal;

endfunction
