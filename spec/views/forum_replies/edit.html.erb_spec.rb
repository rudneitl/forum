require 'rails_helper'

RSpec.describe "forum_replies/edit", type: :view do
  before(:each) do
    @forum_reply = assign(:forum_reply, ForumReply.create!(
      :title => "MyString",
      :status => "MyString",
      :forum_thread => "",
      :forum_reply => nil
    ))
  end

  it "renders the edit forum_reply form" do
    render

    assert_select "form[action=?][method=?]", forum_reply_path(@forum_reply), "post" do

      assert_select "input#forum_reply_title[name=?]", "forum_reply[title]"

      assert_select "input#forum_reply_status[name=?]", "forum_reply[status]"

      assert_select "input#forum_reply_forum_thread[name=?]", "forum_reply[forum_thread]"

      assert_select "input#forum_reply_forum_reply_id[name=?]", "forum_reply[forum_reply_id]"
    end
  end
end
