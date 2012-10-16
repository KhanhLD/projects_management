# == Schema Information
#
# Table name: projects
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :string(255)
#  start       :datetime
#  end         :datetime
#  status      :boolean          default(FALSE)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Project < ActiveRecord::Base
  attr_accessible :description, :end, :name, :start
	has_many :groups

	default_scope order: 'projects.start DESC'

	validates :name, presence: true
	validates :start, presence: true
	validates :end, presence: true
end
