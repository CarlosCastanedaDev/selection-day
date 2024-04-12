class ChangeTechnicalScoreToBeStringInCandidates < ActiveRecord::Migration[7.0]
  def change
    change_column :candidates, :technical_score, :string
  end
end
