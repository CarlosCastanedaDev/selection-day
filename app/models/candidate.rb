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
class Candidate < ApplicationRecord
    belongs_to :cohort, required: true, class_name: "Cohort", foreign_key: "cohort_id", counter_cache: true
end
