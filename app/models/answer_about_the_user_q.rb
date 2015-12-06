class AnswerAboutTheUserQ < ActiveRecord::Base
	belongs_to :project
	belongs_to :about_the_user_q
end
