class IgdbApi
  require 'net/https'
  http = Net::HTTP.new('api.igdb.com/v4',443)
  http.use_ssl = true
  request = Net::HTTP::Post.new(URI('https://api.igdb.com/v4/games'), {'Client-ID' => 'jnfxk1ua26halod0zjourqmufo8jdq', 'Authorization' => 'Bearer yc67hirzo6szg4s30okyemhrtpvqxa'})
  request.body = 'fields age_ratings,aggregated_rating,aggregated_rating_count,alternative_names,artworks,bundles,category,checksum,collection,cover,created_at,dlcs,expansions,external_games,first_release_date,follows,franchise,franchises,game_engines,game_modes,genres,hypes,involved_companies,keywords,multiplayer_modes,name,parent_game,platforms,player_perspectives,rating,rating_count,release_dates,screenshots,similar_games,slug,standalone_expansions,status,storyline,summary,tags,themes,total_rating,total_rating_count,updated_at,url,version_parent,version_title,videos,websites;'
  puts http.request(request).body
end