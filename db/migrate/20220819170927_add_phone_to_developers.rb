class AddPhoneToDevelopers < ActiveRecord::Migration[7.0]
   def change
        add_column :developers, :phone, :string
  end
end
