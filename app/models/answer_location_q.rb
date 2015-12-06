class AnswerLocationQ < ActiveRecord::Base
	belongs_to :project
	belongs_to :location_q
end
