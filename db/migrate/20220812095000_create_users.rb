class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table(:users) do |t|
      ## User Info
      t.string :name
      t.string :username
      t.string :email
      t.string :password

      t.timestamps
    end

    add_index :users, :email,                unique: true
  end
end
