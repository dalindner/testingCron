class AnswerScheduleQ < ActiveRecord::Base
	belongs_to :project
	belongs_to :schedule_q
end
