# == Schema Information
#
# Table name: candidates
#
#  id                    :integer          not null, primary key
#  first_name            :string
#  last_name             :string
#  technical_score       :integer
#  average_behavioral    :string
#  total_score           :string
#  highest_level         :string
#  higher_education_name :string
#  major                 :string
#  gender                :string
#  pronouns              :string
#  race                  :string
#  employment_status     :string
#  current_income        :integer
#  status                :string
#  cohort_id             :integer
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  email                 :string
#
require 'rails_helper'

RSpec.describe Candidate, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
