require 'rails_helper'

RSpec.describe "shops/show", type: :view do
  before(:each) do
    assign(:shop, Shop.create!(
      name: "Name",
      town: nil,
      kind: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
  end
end
