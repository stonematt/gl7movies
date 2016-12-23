json.extract! movie, :id, :Title, :Genre, :Rating, :Lead, :Director, :Year, :Type, :Duration, :Theater, :created_at, :updated_at
json.url movie_url(movie, format: :json)