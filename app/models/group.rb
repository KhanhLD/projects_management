class Group < ActiveRecord::Base
  attr_accessible :project_id, :user_id
	belongs_to :user
	belongs_to :project
	has_many :schedules

	validates :project_id, presence: true
	validates :user_id, presence: true
end
