class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|
      t.integer :duration
      t.datetime :take_off
      t.bigint :departure_id
      t.bigint :arrival_id

      t.timestamps
    end
  end
end
