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
class Cohort < ApplicationRecord
end
