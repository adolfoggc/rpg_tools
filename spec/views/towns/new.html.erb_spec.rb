require 'rails_helper'

RSpec.describe "towns/new", type: :view do
  before(:each) do
    assign(:town, Town.new(
      name: "MyString",
      description: "MyText"
    ))
  end

  it "renders new town form" do
    render

    assert_select "form[action=?][method=?]", towns_path, "post" do

      assert_select "input[name=?]", "town[name]"

      assert_select "textarea[name=?]", "town[description]"
    end
  end
end
