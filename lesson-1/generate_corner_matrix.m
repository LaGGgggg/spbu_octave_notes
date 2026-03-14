function result = generate_corner_matrix(n)

  result = zeros(n, n);
  current_value = 1;

  for i = 2:(n * 2)

    if mod(i, 2) == 0
      j = max(1, i - n):min(n, i - 1)
    else
      j = fliplr(max(1, i - n):min(n, i - 1));
    endif

    for k = 1:length(j)
      row = j(k);
      result(row, i - row) = current_value;
      current_value += 1;
    endfor
  endfor
endfunction
