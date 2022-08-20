class DeleteDevColumns < ActiveRecord::Migration[7.0]
  def change
    remove_column :developers, :phone, :integer
  end
end
