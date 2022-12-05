require 'rails_helper'

RSpec.describe "town_details/show", type: :view do
  before(:each) do
    assign(:town_detail, TownDetail.create!(
      town: nil,
      size: 2,
      population: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end
