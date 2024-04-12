class CreateCandidates < ActiveRecord::Migration[7.0]
  def change
    create_table :candidates do |t|
      t.string :first_name
      t.string :last_name
      t.integer :technical_score
      t.string :average_behavioral
      t.string :total_score
      t.string :highest_level
      t.string :higher_education_name
      t.string :major
      t.string :gender
      t.string :pronouns
      t.string :race
      t.string :employment_status
      t.integer :current_income
      t.string :status
      t.integer :cohort_id

      t.timestamps
    end
  end
end
