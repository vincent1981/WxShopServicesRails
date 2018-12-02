json.call(address, :id, :recipients, :phone_number, :address, :postal_code,
  :acquiescent)
json.province do
  json.call(address.province, :id, :category, :name)
end
json.city do
  json.call(address.city, :id, :category, :name)
end
json.district do
  json.call(address.district, :id, :category, :name)
end