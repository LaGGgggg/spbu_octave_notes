function result = generate_chess_matrix(n)
  result = logical(mod((1:n)' + (1:n), 2));
endfunction
