class Movie < ApplicationRecord
  include Filterable
  
  default_scope { order('title') } 

  scope :title, -> (title) { where("title ilike ?", "%#{title}%") }
  scope :rating, -> (rating) { where("rating ilike ?", "#{rating}") }
  scope :genre, -> (genre) { where("genre ilike ?", "#{genre}") }
  scope :lead, -> (lead) { where("lead ilike ?", "%#{lead}%") }
  scope :director, -> (director) { where("director ilike ?", "%#{director}%") }
  scope :medium, -> (medium) { where("medium ilike ?", "%#{medium}%") }

end
