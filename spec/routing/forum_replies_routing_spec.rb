require "rails_helper"

RSpec.describe ForumRepliesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/forum_replies").to route_to("forum_replies#index")
    end

    it "routes to #new" do
      expect(:get => "/forum_replies/new").to route_to("forum_replies#new")
    end

    it "routes to #show" do
      expect(:get => "/forum_replies/1").to route_to("forum_replies#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/forum_replies/1/edit").to route_to("forum_replies#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/forum_replies").to route_to("forum_replies#create")
    end

    it "routes to #update" do
      expect(:put => "/forum_replies/1").to route_to("forum_replies#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/forum_replies/1").to route_to("forum_replies#destroy", :id => "1")
    end

  end
end
