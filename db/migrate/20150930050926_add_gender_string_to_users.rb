class AddGenderStringToUsers < ActiveRecord::Migration
  def change
    add_column :users, :genderString, :string
  end
end
