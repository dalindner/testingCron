class AnswerToolQ < ActiveRecord::Base
	belongs_to :project
	belongs_to :tool_q
end
