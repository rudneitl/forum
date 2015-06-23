require 'rails_helper'

RSpec.describe "forum_replies/show", type: :view do
  before(:each) do
    @forum_reply = assign(:forum_reply, ForumReply.create!(
      :title => "Title",
      :status => "Status",
      :forum_thread => "",
      :forum_reply => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Status/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
