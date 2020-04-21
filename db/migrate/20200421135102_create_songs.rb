class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :title, null: false
      t.string :reading_title, null: false, default: ''
      t.integer :original_key, null: false, default: 0
      t.string :karaoke_type, null: false
      t.string :song_number, null: false, default: ''
      t.date :delivery_date
      t.string :url, null: false

      t.timestamps
    end
  end
end
