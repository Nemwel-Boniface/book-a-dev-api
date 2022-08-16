class AddReservationsRefToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :reservations, :user, foreign_key: { to_table: :users }
    add_reference :reservations, :developer, foreign_key: { to_table: :developers }
  end
end
