class CreateVersions < ActiveRecord::Migration
  def change
    create_table :versions do |t|
      t.integer :uploader_id
      t.text :notes
      t.references :project, index: true

      t.timestamps
    end
  end
end
