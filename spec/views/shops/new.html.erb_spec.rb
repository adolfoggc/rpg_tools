require 'rails_helper'

RSpec.describe "shops/new", type: :view do
  before(:each) do
    assign(:shop, Shop.new(
      name: "MyString",
      town: nil,
      kind: 1
    ))
  end

  it "renders new shop form" do
    render

    assert_select "form[action=?][method=?]", shops_path, "post" do

      assert_select "input[name=?]", "shop[name]"

      assert_select "input[name=?]", "shop[town_id]"

      assert_select "input[name=?]", "shop[kind]"
    end
  end
end
