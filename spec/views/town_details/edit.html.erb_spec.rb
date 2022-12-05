require 'rails_helper'

RSpec.describe "town_details/edit", type: :view do
  let(:town_detail) {
    TownDetail.create!(
      town: nil,
      size: 1,
      population: 1
    )
  }

  before(:each) do
    assign(:town_detail, town_detail)
  end

  it "renders the edit town_detail form" do
    render

    assert_select "form[action=?][method=?]", town_detail_path(town_detail), "post" do

      assert_select "input[name=?]", "town_detail[town_id]"

      assert_select "input[name=?]", "town_detail[size]"

      assert_select "input[name=?]", "town_detail[population]"
    end
  end
end
