require 'rails_helper'

RSpec.describe "memos/index", type: :view do
  before(:each) do
    assign(:memos, [
      Memo.create!(
        :content => "MyText"
      ),
      Memo.create!(
        :content => "MyText"
      )
    ])
  end

  it "renders a list of memos" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
