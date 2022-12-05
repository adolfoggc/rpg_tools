json.extract! town_detail, :id, :town_id, :size, :population, :created_at, :updated_at
json.url town_detail_url(town_detail, format: :json)
