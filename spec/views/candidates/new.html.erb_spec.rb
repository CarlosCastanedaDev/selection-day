require 'rails_helper'

RSpec.describe "candidates/new", type: :view do
  before(:each) do
    assign(:candidate, Candidate.new(
      first_name: "MyString",
      last_name: "MyString",
      technical_score: 1,
      average_behavioral: "MyString",
      total_score: "MyString",
      highest_level: "MyString",
      higher_education_name: "MyString",
      major: "MyString",
      gender: "MyString",
      pronouns: "MyString",
      race: "MyString",
      employment_status: "MyString",
      current_income: 1,
      status: "MyString",
      cohort_id: 1
    ))
  end

  it "renders new candidate form" do
    render

    assert_select "form[action=?][method=?]", candidates_path, "post" do

      assert_select "input[name=?]", "candidate[first_name]"

      assert_select "input[name=?]", "candidate[last_name]"

      assert_select "input[name=?]", "candidate[technical_score]"

      assert_select "input[name=?]", "candidate[average_behavioral]"

      assert_select "input[name=?]", "candidate[total_score]"

      assert_select "input[name=?]", "candidate[highest_level]"

      assert_select "input[name=?]", "candidate[higher_education_name]"

      assert_select "input[name=?]", "candidate[major]"

      assert_select "input[name=?]", "candidate[gender]"

      assert_select "input[name=?]", "candidate[pronouns]"

      assert_select "input[name=?]", "candidate[race]"

      assert_select "input[name=?]", "candidate[employment_status]"

      assert_select "input[name=?]", "candidate[current_income]"

      assert_select "input[name=?]", "candidate[status]"

      assert_select "input[name=?]", "candidate[cohort_id]"
    end
  end
end
