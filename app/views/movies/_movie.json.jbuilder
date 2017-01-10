json.extract! movie, :id, :title, :genre, :rating, :lead, :director, :year, :medium, :duration, :theater, :created_at, :updated_at
json.url movie_url(movie, format: :json)