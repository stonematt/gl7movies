class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :genre
      t.string :rating
      t.string :lead
      t.string :director
      t.integer :year
      t.string :medium
      t.integer :duration
      t.string :theater

      t.timestamps
    end
  end
end
