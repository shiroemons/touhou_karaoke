class CreateDisplayArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :display_artists do |t|
      t.string :name, null: false
      t.string :reading_name, null: false, default: ''
      t.string :karaoke_type, null: false
      t.string :url, null: false, default: ''

      t.timestamps
    end
  end
end
