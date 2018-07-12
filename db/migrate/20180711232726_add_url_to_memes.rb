class AddUrlToMemes < ActiveRecord::Migration[5.2]
  def change
    add_column :memes, :url, :string
  end
end
