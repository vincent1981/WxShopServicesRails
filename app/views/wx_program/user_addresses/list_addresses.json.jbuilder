json.addresses do
  json.array! @addresses do |address|
    json.partial!('mobile/areas/area', area: address)
  end
end