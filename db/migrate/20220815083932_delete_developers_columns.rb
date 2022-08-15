class DeleteDevelopersColumns < ActiveRecord::Migration[7.0]
  def change
    remove_column :developers, :tech_stack, :string
    remove_column :developers, :email, :string
  end
end
