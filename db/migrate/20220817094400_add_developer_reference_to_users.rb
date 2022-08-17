class AddDeveloperReferenceToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :developers, :user, foreign_key: { to_table: :users }
  end
end
