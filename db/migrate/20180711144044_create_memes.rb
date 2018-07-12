class CreateMemes < ActiveRecord::Migration[5.2]
  def change
    create_table :memes do |t|
      t.text :title
      t.text :gif_text
      t.integer :user_id

      t.timestamps
    end
  end
end
