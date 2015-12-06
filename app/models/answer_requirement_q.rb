class AnswerRequirementQ < ActiveRecord::Base
	belongs_to :project
	belongs_to :requirement_q
end
