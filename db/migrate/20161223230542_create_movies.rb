class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
      t.string :Title
      t.string :Genre
      t.string :Rating
      t.string :Lead
      t.string :Director
      t.integer :Year
      t.string :Type
      t.integer :Duration
      t.string :Theater

      t.timestamps
    end
  end
end
