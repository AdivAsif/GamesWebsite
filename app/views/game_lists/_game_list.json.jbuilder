json.extract! game_list, :id, :game, :title, :created_at, :updated_at
json.url game_list_url(game_list, format: :json)
