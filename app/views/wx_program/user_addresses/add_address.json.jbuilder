json.address do
  json.partial!('wx_program/user_addresses/user_address', address: @address)
end

