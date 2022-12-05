require 'rails_helper'

RSpec.describe "towns/edit", type: :view do
  let(:town) {
    Town.create!(
      name: "MyString",
      description: "MyText"
    )
  }

  before(:each) do
    assign(:town, town)
  end

  it "renders the edit town form" do
    render

    assert_select "form[action=?][method=?]", town_path(town), "post" do

      assert_select "input[name=?]", "town[name]"

      assert_select "textarea[name=?]", "town[description]"
    end
  end
end
