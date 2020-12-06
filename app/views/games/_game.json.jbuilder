json.extract! game, :id, :name, :cover, :genre, :release_date, :rating, :aggregated_rating, :platform, :summary, :created_at, :updated_at
json.url game_url(game, format: :json)
