class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :name, null: false
      t.string :cover, null: false
      t.string :genre, null: false
      t.string :release_date, null: false
      t.integer :rating
      t.decimal :aggregated_rating
      t.string :platform, null: false
      t.string :summary, null: false

      t.timestamps
    end
  end
end
