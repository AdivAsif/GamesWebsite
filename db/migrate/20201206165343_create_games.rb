class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :name
      t.string :cover
      t.integer :rating
      t.string :summary
      t.string :genre
      t.timestamps
    end
  end
end
