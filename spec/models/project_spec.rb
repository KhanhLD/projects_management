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

require 'spec_helper'

describe Project do
  pending "add some examples to (or delete) #{__FILE__}"
end
