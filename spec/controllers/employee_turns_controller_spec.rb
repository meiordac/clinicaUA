require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe EmployeeTurnsController do

  # This should return the minimal set of attributes required to create a valid
  # EmployeeTurn. As you add validations to EmployeeTurn, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "employee_id" => "1" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # EmployeeTurnsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all employee_turns as @employee_turns" do
      employee_turn = EmployeeTurn.create! valid_attributes
      get :index, {}, valid_session
      assigns(:employee_turns).should eq([employee_turn])
    end
  end

  describe "GET show" do
    it "assigns the requested employee_turn as @employee_turn" do
      employee_turn = EmployeeTurn.create! valid_attributes
      get :show, {:id => employee_turn.to_param}, valid_session
      assigns(:employee_turn).should eq(employee_turn)
    end
  end

  describe "GET new" do
    it "assigns a new employee_turn as @employee_turn" do
      get :new, {}, valid_session
      assigns(:employee_turn).should be_a_new(EmployeeTurn)
    end
  end

  describe "GET edit" do
    it "assigns the requested employee_turn as @employee_turn" do
      employee_turn = EmployeeTurn.create! valid_attributes
      get :edit, {:id => employee_turn.to_param}, valid_session
      assigns(:employee_turn).should eq(employee_turn)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new EmployeeTurn" do
        expect {
          post :create, {:employee_turn => valid_attributes}, valid_session
        }.to change(EmployeeTurn, :count).by(1)
      end

      it "assigns a newly created employee_turn as @employee_turn" do
        post :create, {:employee_turn => valid_attributes}, valid_session
        assigns(:employee_turn).should be_a(EmployeeTurn)
        assigns(:employee_turn).should be_persisted
      end

      it "redirects to the created employee_turn" do
        post :create, {:employee_turn => valid_attributes}, valid_session
        response.should redirect_to(EmployeeTurn.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved employee_turn as @employee_turn" do
        # Trigger the behavior that occurs when invalid params are submitted
        EmployeeTurn.any_instance.stub(:save).and_return(false)
        post :create, {:employee_turn => { "employee_id" => "invalid value" }}, valid_session
        assigns(:employee_turn).should be_a_new(EmployeeTurn)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        EmployeeTurn.any_instance.stub(:save).and_return(false)
        post :create, {:employee_turn => { "employee_id" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested employee_turn" do
        employee_turn = EmployeeTurn.create! valid_attributes
        # Assuming there are no other employee_turns in the database, this
        # specifies that the EmployeeTurn created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        EmployeeTurn.any_instance.should_receive(:update_attributes).with({ "employee_id" => "1" })
        put :update, {:id => employee_turn.to_param, :employee_turn => { "employee_id" => "1" }}, valid_session
      end

      it "assigns the requested employee_turn as @employee_turn" do
        employee_turn = EmployeeTurn.create! valid_attributes
        put :update, {:id => employee_turn.to_param, :employee_turn => valid_attributes}, valid_session
        assigns(:employee_turn).should eq(employee_turn)
      end

      it "redirects to the employee_turn" do
        employee_turn = EmployeeTurn.create! valid_attributes
        put :update, {:id => employee_turn.to_param, :employee_turn => valid_attributes}, valid_session
        response.should redirect_to(employee_turn)
      end
    end

    describe "with invalid params" do
      it "assigns the employee_turn as @employee_turn" do
        employee_turn = EmployeeTurn.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        EmployeeTurn.any_instance.stub(:save).and_return(false)
        put :update, {:id => employee_turn.to_param, :employee_turn => { "employee_id" => "invalid value" }}, valid_session
        assigns(:employee_turn).should eq(employee_turn)
      end

      it "re-renders the 'edit' template" do
        employee_turn = EmployeeTurn.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        EmployeeTurn.any_instance.stub(:save).and_return(false)
        put :update, {:id => employee_turn.to_param, :employee_turn => { "employee_id" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested employee_turn" do
      employee_turn = EmployeeTurn.create! valid_attributes
      expect {
        delete :destroy, {:id => employee_turn.to_param}, valid_session
      }.to change(EmployeeTurn, :count).by(-1)
    end

    it "redirects to the employee_turns list" do
      employee_turn = EmployeeTurn.create! valid_attributes
      delete :destroy, {:id => employee_turn.to_param}, valid_session
      response.should redirect_to(employee_turns_url)
    end
  end

end