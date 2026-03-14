function result = generate_circle_matrix(n, radius)

  [x, y] = meshgrid(1:n, 1:n);

  center = (n + 1) / 2;

  result = (x - center).^2 + (y - center).^2 <= radius^2;
endfunction
