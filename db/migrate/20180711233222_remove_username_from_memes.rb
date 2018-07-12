class RemoveUsernameFromMemes < ActiveRecord::Migration[5.2]
  def change
    remove_column :memes, :username, :string
  end
end
