require 'rails_helper'

RSpec.describe "candidates/show", type: :view do
  before(:each) do
    assign(:candidate, Candidate.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Average Behavioral/)
    expect(rendered).to match(/Total Score/)
    expect(rendered).to match(/Highest Level/)
    expect(rendered).to match(/Higher Education Name/)
    expect(rendered).to match(/Major/)
    expect(rendered).to match(/Gender/)
    expect(rendered).to match(/Pronouns/)
    expect(rendered).to match(/Race/)
    expect(rendered).to match(/Employment Status/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(/4/)
  end
end
