require "spec_helper"

describe EmployeeTurnsController do
  describe "routing" do

    it "routes to #index" do
      get("/employee_turns").should route_to("employee_turns#index")
    end

    it "routes to #new" do
      get("/employee_turns/new").should route_to("employee_turns#new")
    end

    it "routes to #show" do
      get("/employee_turns/1").should route_to("employee_turns#show", :id => "1")
    end

    it "routes to #edit" do
      get("/employee_turns/1/edit").should route_to("employee_turns#edit", :id => "1")
    end

    it "routes to #create" do
      post("/employee_turns").should route_to("employee_turns#create")
    end

    it "routes to #update" do
      put("/employee_turns/1").should route_to("employee_turns#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/employee_turns/1").should route_to("employee_turns#destroy", :id => "1")
    end

  end
end
