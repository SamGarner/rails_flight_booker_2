class CreateAirports < ActiveRecord::Migration[6.1]
  def change
    create_table :airports do |t|
      t.text :code
      t.text :city

      t.timestamps
    end
    add_index :airports, :code, unique: true
  end
end
