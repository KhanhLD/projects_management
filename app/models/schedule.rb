class Schedule < ActiveRecord::Base
  attr_accessible :day, :group_id, :task
	belongs_to :group

	default_scope order: 'schedules.created_at DESC'

	validates :group_id, presence: true
	validates :task, presence: true
	validates :day, presence: true
end
