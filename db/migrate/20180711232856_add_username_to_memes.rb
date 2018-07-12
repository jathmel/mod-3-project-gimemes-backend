class AddUsernameToMemes < ActiveRecord::Migration[5.2]
  def change
    add_column :memes, :username, :string
  end
end
