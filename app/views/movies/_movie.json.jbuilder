json.extract! movie, :id, :title, :episode_id, :release_date, :director, :producer, :opening_crwl, :species, :starships, :vehicles, :characters, :planets, :url, :created, :edited, :created_at, :updated_at
json.url movie_url(movie, format: :json)
