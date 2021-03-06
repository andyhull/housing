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

describe HousingParentsController do

  # This should return the minimal set of attributes required to create a valid
  # HousingParent. As you add validations to HousingParent, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # HousingParentsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all housing_parents as @housing_parents" do
      housing_parent = HousingParent.create! valid_attributes
      get :index, {}, valid_session
      assigns(:housing_parents).should eq([housing_parent])
    end
  end

  describe "GET show" do
    it "assigns the requested housing_parent as @housing_parent" do
      housing_parent = HousingParent.create! valid_attributes
      get :show, {:id => housing_parent.to_param}, valid_session
      assigns(:housing_parent).should eq(housing_parent)
    end
  end

  describe "GET new" do
    it "assigns a new housing_parent as @housing_parent" do
      get :new, {}, valid_session
      assigns(:housing_parent).should be_a_new(HousingParent)
    end
  end

  describe "GET edit" do
    it "assigns the requested housing_parent as @housing_parent" do
      housing_parent = HousingParent.create! valid_attributes
      get :edit, {:id => housing_parent.to_param}, valid_session
      assigns(:housing_parent).should eq(housing_parent)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new HousingParent" do
        expect {
          post :create, {:housing_parent => valid_attributes}, valid_session
        }.to change(HousingParent, :count).by(1)
      end

      it "assigns a newly created housing_parent as @housing_parent" do
        post :create, {:housing_parent => valid_attributes}, valid_session
        assigns(:housing_parent).should be_a(HousingParent)
        assigns(:housing_parent).should be_persisted
      end

      it "redirects to the created housing_parent" do
        post :create, {:housing_parent => valid_attributes}, valid_session
        response.should redirect_to(HousingParent.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved housing_parent as @housing_parent" do
        # Trigger the behavior that occurs when invalid params are submitted
        HousingParent.any_instance.stub(:save).and_return(false)
        post :create, {:housing_parent => {}}, valid_session
        assigns(:housing_parent).should be_a_new(HousingParent)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        HousingParent.any_instance.stub(:save).and_return(false)
        post :create, {:housing_parent => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested housing_parent" do
        housing_parent = HousingParent.create! valid_attributes
        # Assuming there are no other housing_parents in the database, this
        # specifies that the HousingParent created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        HousingParent.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => housing_parent.to_param, :housing_parent => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested housing_parent as @housing_parent" do
        housing_parent = HousingParent.create! valid_attributes
        put :update, {:id => housing_parent.to_param, :housing_parent => valid_attributes}, valid_session
        assigns(:housing_parent).should eq(housing_parent)
      end

      it "redirects to the housing_parent" do
        housing_parent = HousingParent.create! valid_attributes
        put :update, {:id => housing_parent.to_param, :housing_parent => valid_attributes}, valid_session
        response.should redirect_to(housing_parent)
      end
    end

    describe "with invalid params" do
      it "assigns the housing_parent as @housing_parent" do
        housing_parent = HousingParent.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        HousingParent.any_instance.stub(:save).and_return(false)
        put :update, {:id => housing_parent.to_param, :housing_parent => {}}, valid_session
        assigns(:housing_parent).should eq(housing_parent)
      end

      it "re-renders the 'edit' template" do
        housing_parent = HousingParent.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        HousingParent.any_instance.stub(:save).and_return(false)
        put :update, {:id => housing_parent.to_param, :housing_parent => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested housing_parent" do
      housing_parent = HousingParent.create! valid_attributes
      expect {
        delete :destroy, {:id => housing_parent.to_param}, valid_session
      }.to change(HousingParent, :count).by(-1)
    end

    it "redirects to the housing_parents list" do
      housing_parent = HousingParent.create! valid_attributes
      delete :destroy, {:id => housing_parent.to_param}, valid_session
      response.should redirect_to(housing_parents_url)
    end
  end

end
