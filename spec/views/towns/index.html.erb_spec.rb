require 'rails_helper'

RSpec.describe "towns/index", type: :view do
  before(:each) do
    assign(:towns, [
      Town.create!(
        name: "Name",
        description: "MyText"
      ),
      Town.create!(
        name: "Name",
        description: "MyText"
      )
    ])
  end

  it "renders a list of towns" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("MyText".to_s), count: 2
  end
end
