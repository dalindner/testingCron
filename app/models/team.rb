class Team < ActiveRecord::Base
	validates :title, presence: true

	has_many :projects, dependent: :destroy
	has_many :team_users
    has_many :members, through: :team_users, source: :user

	belongs_to :leader, class_name: "User", foreign_key: :user_id

  	def editable_by?(user)
    	user && user == leader
  	end
end
