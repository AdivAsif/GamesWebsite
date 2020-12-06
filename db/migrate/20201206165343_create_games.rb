class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :name
      t.string :cover
      t.string :genre
      t.string :release_date
      t.integer :rating
      t.decimal :aggregated_rating
      t.string :platform
      t.string :summary

      t.timestamps
    end
  end
end
