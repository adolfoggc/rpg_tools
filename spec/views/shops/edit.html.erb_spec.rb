require 'rails_helper'

RSpec.describe "shops/edit", type: :view do
  let(:shop) {
    Shop.create!(
      name: "MyString",
      town: nil,
      kind: 1
    )
  }

  before(:each) do
    assign(:shop, shop)
  end

  it "renders the edit shop form" do
    render

    assert_select "form[action=?][method=?]", shop_path(shop), "post" do

      assert_select "input[name=?]", "shop[name]"

      assert_select "input[name=?]", "shop[town_id]"

      assert_select "input[name=?]", "shop[kind]"
    end
  end
end
