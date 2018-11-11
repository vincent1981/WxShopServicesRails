json.home_info do
  json.banner_list do
    json.array! @home_info.banner_list do |banner|
      json.call(banner, :id, :product_id, :title, :picture_url)
    end
  end
  json.recommend_product_list do
    json.array! @home_info.recommend_product_list do |product|
      json.call(product, :id, :product_name, :description)
    end
  end
end