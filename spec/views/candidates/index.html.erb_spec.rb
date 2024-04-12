require 'rails_helper'

RSpec.describe "candidates/index", type: :view do
  before(:each) do
    assign(:candidates, [
      Candidate.create!(
        first_name: "First Name",
        last_name: "Last Name",
        technical_score: 2,
        average_behavioral: "Average Behavioral",
        total_score: "Total Score",
        highest_level: "Highest Level",
        higher_education_name: "Higher Education Name",
        major: "Major",
        gender: "Gender",
        pronouns: "Pronouns",
        race: "Race",
        employment_status: "Employment Status",
        current_income: 3,
        status: "Status",
        cohort_id: 4
      ),
      Candidate.create!(
        first_name: "First Name",
        last_name: "Last Name",
        technical_score: 2,
        average_behavioral: "Average Behavioral",
        total_score: "Total Score",
        highest_level: "Highest Level",
        higher_education_name: "Higher Education Name",
        major: "Major",
        gender: "Gender",
        pronouns: "Pronouns",
        race: "Race",
        employment_status: "Employment Status",
        current_income: 3,
        status: "Status",
        cohort_id: 4
      )
    ])
  end

  it "renders a list of candidates" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("First Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Last Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Average Behavioral".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Total Score".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Highest Level".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Higher Education Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Major".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Gender".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Pronouns".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Race".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Employment Status".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Status".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(4.to_s), count: 2
  end
end
