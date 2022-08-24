class CreateDevelopers < ActiveRecord::Migration[7.0]
  def change
    create_table :developers do |t|
      t.string :name
      t.string :icon
      t.string :location
      t.string :email
      t.integer :experience
      t.text :bio
      t.integer :hourly_rate
      t.string :tech_stack
      t.string :phone
      t.string :github
      t.string :twitter
      t.string :linkedin
      t.string :title
      t.boolean :available
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
