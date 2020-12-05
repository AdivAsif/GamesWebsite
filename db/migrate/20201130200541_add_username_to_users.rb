class AddUsernameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string, null: false, index: true, unique: true, default: "Username"
  end
end
