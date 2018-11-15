json.products do
  json.array! @products do |product|
    json.call(product[:product], :id, :product_name, :description)
    json.product_image product[:product_image_url]
  end
end