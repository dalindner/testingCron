class Project < ActiveRecord::Base
	has_and_belongs_to_many :users
	has_many :versions
	validates :project_title, presence: true,
								length: { minimum: 4 }
end
