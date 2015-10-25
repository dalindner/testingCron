class Project < ActiveRecord::Base
	validates :project_title, presence: true,
								length: { minimum: 4 }
	belongs_to :team, counter_cache: :projects_count
    #belongs_to :creater, class_name: "User", foreign_key: :user_id
  #def editable_by?(user)
  #   user && user == creater
  #end
	has_many :versions
	
end
