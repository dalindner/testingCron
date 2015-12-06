class AnswerRiskQ < ActiveRecord::Base
	belongs_to :project
	belongs_to :risk_q
end

