class CreateMovies < ActiveRecord::Migration[8.0]
  def change
    create_table :movies do |t|
      t.string :title, null: false
      t.string :overview, null: false
      t.string :poster_url
      t.float :rating

      t.timestamps
    end
  end
end
