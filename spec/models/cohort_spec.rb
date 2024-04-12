# == Schema Information
#
# Table name: cohorts
#
#  id               :integer          not null, primary key
#  name             :string
#  candidates_count :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
require 'rails_helper'

RSpec.describe Cohort, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
