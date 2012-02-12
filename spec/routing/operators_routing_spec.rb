require "spec_helper"

describe OperatorsController do
  describe "routing" do

    it "routes to #index" do
      get("/operators").should route_to("operators#index")
    end

    it "routes to #new" do
      get("/operators/new").should route_to("operators#new")
    end

    it "routes to #show" do
      get("/operators/1").should route_to("operators#show", :id => "1")
    end

    it "routes to #edit" do
      get("/operators/1/edit").should route_to("operators#edit", :id => "1")
    end

    it "routes to #create" do
      post("/operators").should route_to("operators#create")
    end

    it "routes to #update" do
      put("/operators/1").should route_to("operators#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/operators/1").should route_to("operators#destroy", :id => "1")
    end

  end
end
