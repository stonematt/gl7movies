class Movie < ApplicationRecord

  scope :title, -> (title) { where("title like ?", "%#{title}%") }
  scope :rating, -> (rating) { where("rating like ?", "%#{rating}%") }
  scope :lead, -> (lead) { where("lead like ?", "%#{lead}%") }
  scope :director, -> (director) { where("director like ?", "%#{director}%") }
  scope :medium, -> (medium) { where("medium like ?", "%#{medium}%") }

end
