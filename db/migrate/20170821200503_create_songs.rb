class CreateSongs < ActiveRecord::Migration[5.1]
  def change
    create_table :songs do |t|
      t.string :title, null: false
      t.string :author, null: false
      t.string :audio, null: false
      t.string :extension, null: false

      t.timestamps
    end
  end
end
