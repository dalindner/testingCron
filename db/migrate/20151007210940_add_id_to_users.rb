class AddIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :inputId, :string
  end
end
