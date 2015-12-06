class AnswerCostQ < ActiveRecord::Base
	belongs_to :project
	belongs_to :cost_q
end
