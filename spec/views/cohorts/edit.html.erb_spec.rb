require 'rails_helper'

RSpec.describe "cohorts/edit", type: :view do
  let(:cohort) {
    Cohort.create!(
      name: "MyString",
      candidates_count: 1
    )
  }

  before(:each) do
    assign(:cohort, cohort)
  end

  it "renders the edit cohort form" do
    render

    assert_select "form[action=?][method=?]", cohort_path(cohort), "post" do

      assert_select "input[name=?]", "cohort[name]"

      assert_select "input[name=?]", "cohort[candidates_count]"
    end
  end
end
