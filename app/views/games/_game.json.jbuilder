json.extract! game, :id, :name, :cover, :genre,  :rating, :summary, :created_at, :updated_at
json.url game_url(game, format: :json)
