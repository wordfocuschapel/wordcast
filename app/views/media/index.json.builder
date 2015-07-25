json.array!(@media) do |medium|
  json.extract! medium, :id, :title, :media_type, :pillar, :link
  json.url medium_url(medium, format: :json)
end