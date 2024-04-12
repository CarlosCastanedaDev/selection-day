require 'rails_helper'

RSpec.describe "cohorts/new", type: :view do
  before(:each) do
    assign(:cohort, Cohort.new(
      name: "MyString",
      candidates_count: 1
    ))
  end

  it "renders new cohort form" do
    render

    assert_select "form[action=?][method=?]", cohorts_path, "post" do

      assert_select "input[name=?]", "cohort[name]"

      assert_select "input[name=?]", "cohort[candidates_count]"
    end
  end
end
