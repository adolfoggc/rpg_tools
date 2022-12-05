require 'rails_helper'

RSpec.describe "town_details/index", type: :view do
  before(:each) do
    assign(:town_details, [
      TownDetail.create!(
        town: nil,
        size: 2,
        population: 3
      ),
      TownDetail.create!(
        town: nil,
        size: 2,
        population: 3
      )
    ])
  end

  it "renders a list of town_details" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(3.to_s), count: 2
  end
end
