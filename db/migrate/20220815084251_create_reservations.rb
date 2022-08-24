class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.string :location
      t.references :user, null: false, foreign_key: true
      t.references :developer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
