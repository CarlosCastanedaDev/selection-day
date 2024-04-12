json.extract! candidate, :id, :first_name, :last_name, :technical_score, :average_behavioral, :total_score, :highest_level, :higher_education_name, :major, :gender, :pronouns, :race, :employment_status, :current_income, :status, :cohort_id, :created_at, :updated_at
json.url candidate_url(candidate, format: :json)
