class AddStuffToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :age, :integer
    add_column :users, :gender, :string
    add_column :users, :role, :string
    add_column :users, :emailSecondary, :string
    add_column :users, :phoneNumber, :string
    add_column :users, :phoneNumberSecondary, :string
    add_column :users, :company, :string
    add_column :users, :project, :string
  end
end
