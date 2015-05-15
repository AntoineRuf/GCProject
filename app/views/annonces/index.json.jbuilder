json.array!(@annonces) do |annonce|
  json.extract! annonce, :id, :title, :body, :price, :creator_id, :post_date
  json.url annonce_url(annonce, format: :json)
end
