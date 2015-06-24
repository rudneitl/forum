require 'rails_helper'

RSpec.describe "topics/edit", type: :view do
  before(:each) do
    @topic = assign(:topic, Topic.create!(
      :description => "MyString",
      :status => "MyString",
      :topic => nil
    ))
  end

  it "renders the edit topic form" do
    render

    assert_select "form[action=?][method=?]", topic_path(@topic), "post" do

      assert_select "input#topic_description[name=?]", "topic[description]"

      assert_select "input#topic_status[name=?]", "topic[status]"

      assert_select "input#topic_topic_id[name=?]", "topic[topic_id]"
    end
  end
end
