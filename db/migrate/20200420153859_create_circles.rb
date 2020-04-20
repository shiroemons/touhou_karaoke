class CreateCircles < ActiveRecord::Migration[6.0]
  def change
    create_table :circles do |t|
      t.string :name, null: false
      t.string :reading_name

      t.timestamps
    end
  end
end
