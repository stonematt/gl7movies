
desc "bulk load movies in the db"
task :upload_movies => [ :environment] do
  require 'csv'
  
  f = "#{Rails.root}/tmp/movies.csv"
  
  raise "#{f} does not exist. Stoping import of movies" if !File.exists?(f)
  
  CSV.foreach(f, :headers => true) do |row|
    Movie.create(row.to_hash)
  end
end

