function result = generate_alternating_matrix(rows, cols)
  result = repmat(mod(0:rows - 1, 2), cols, 1);
endfunction
