json.user do
  json.partial!('wx_program/users/user', user: @current_user)
end