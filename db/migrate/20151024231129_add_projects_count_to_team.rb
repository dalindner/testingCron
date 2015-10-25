class AddProjectsCountToTeam < ActiveRecord::Migration
  def change
    add_column :teams, :projects_count, :integer, default: 0
  end
end
