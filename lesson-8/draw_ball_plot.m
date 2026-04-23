function draw_ball_plot(bounces, k)

  function dsdt = f(t, s)
    % s(1) - height, s(2) - speed
    dsdt = [s(2); -9.8];
  endfunction

  function [value, isterminal, direction] = f_ground_reached_event(t, s)
    value = s(1);
    isterminal = 1;
    direction = -1;
  endfunction

  options = odeset('events', @f_ground_reached_event);

  t_0 = 0;
  t_1 = 20;
  s_0 = [10, 0];

  ts = [];
  ys = [];

  for i = 1:bounces + 1

    [t, y, events_t, events_y] = ode45(@f, [t_0, t_1], s_0, options);

    if isempty(ts)
      ts = t;
      ys = y;
    else
      ts = [ts; t(2:end)];
      ys = [ys; y(2:end,:)];
    endif

    if isempty(events_t)
      break;
    endif

    t_0 = events_t;
    s_0 = [0; -k * events_y(2)];

  endfor

  plot(ts, ys(:,1));
  xlabel('t');
  ylabel('height');

endfunction
