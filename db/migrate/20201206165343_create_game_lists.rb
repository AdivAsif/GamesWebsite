class CreateGameLists < ActiveRecord::Migration[5.2]
  def change
    create_table :game_lists do |t|
      t.string :title

      t.timestamps
    end
  end
end
