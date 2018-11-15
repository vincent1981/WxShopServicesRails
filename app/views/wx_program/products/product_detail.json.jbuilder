json.product do
  json.call(@product[:product], :id, :product_name, :description)
  json.product_image_urls product_images_url(@product[:product_images])
end