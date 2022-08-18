class AddTelephoneToDevelopers < ActiveRecord::Migration[7.0]
  def change
        add_column :developers, :phone, :integer
  end
end
