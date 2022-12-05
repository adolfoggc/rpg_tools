require 'rails_helper'

RSpec.describe "town_details/new", type: :view do
  before(:each) do
    assign(:town_detail, TownDetail.new(
      town: nil,
      size: 1,
      population: 1
    ))
  end

  it "renders new town_detail form" do
    render

    assert_select "form[action=?][method=?]", town_details_path, "post" do

      assert_select "input[name=?]", "town_detail[town_id]"

      assert_select "input[name=?]", "town_detail[size]"

      assert_select "input[name=?]", "town_detail[population]"
    end
  end
end
