require 'rails_helper'

RSpec.describe "topics/new", type: :view do
  before(:each) do
    assign(:topic, Topic.new(
      :description => "MyString",
      :status => "active",
      :topic => nil
    ))
  end

  it "renders new topic form" do
    render

    assert_select "form[action=?][method=?]", topics_path, "post" do

      assert_select "input#topic_description[name=?]", "topic[description]"

      assert_select "input#topic_topic_id[name=?]", "topic[topic_id]"
    end
  end
end
