class CreateOriginals < ActiveRecord::Migration[6.0]
  def change
    create_table :originals, id: false do |t|
      t.string :code, null: false, primary_key: true
      t.string :title, null: false
      t.string :short_title, null: false
      t.string :original_type, null: false

      t.timestamps
    end
  end
end
