require 'rails_helper'

RSpec.describe "stocks/index", type: :view do
  before(:each) do
    assign(:stocks, [
      Stock.create!(
        ticker: "Ticker",
        user: nil
      ),
      Stock.create!(
        ticker: "Ticker",
        user: nil
      )
    ])
  end

  it "renders a list of stocks" do
    render
    assert_select "tr>td", text: "Ticker".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
