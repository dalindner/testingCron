class CreateAdminTables < ActiveRecord::Migration
  def change
    create_table :admin_tables do |t|
      t.string :adminId
      t.string :holderId

      t.timestamps
    end
  end
end
