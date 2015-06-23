require "rails_helper"

RSpec.describe ForumThreadsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/forum_threads").to route_to("forum_threads#index")
    end

    it "routes to #new" do
      expect(:get => "/forum_threads/new").to route_to("forum_threads#new")
    end

    it "routes to #show" do
      expect(:get => "/forum_threads/1").to route_to("forum_threads#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/forum_threads/1/edit").to route_to("forum_threads#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/forum_threads").to route_to("forum_threads#create")
    end

    it "routes to #update" do
      expect(:put => "/forum_threads/1").to route_to("forum_threads#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/forum_threads/1").to route_to("forum_threads#destroy", :id => "1")
    end

  end
end
