class AddDevelopersColumns < ActiveRecord::Migration[7.0]
  def change
    add_column :developers, :tech_stack, :string
    add_column :developers, :github, :string
    add_column :developers, :twitter, :string
    add_column :developers, :linkedin, :string
    add_column :developers, :title, :string
    add_column :developers, :available, :boolean, default: false
  end
end
