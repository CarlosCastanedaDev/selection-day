require 'rails_helper'

RSpec.describe "cohorts/show", type: :view do
  before(:each) do
    assign(:cohort, Cohort.create!(
      name: "Name",
      candidates_count: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
  end
end
