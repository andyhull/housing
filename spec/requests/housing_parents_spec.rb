require 'spec_helper'

describe "HousingParents" do
  describe "GET /housing_parents" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get housing_parents_path
      response.status.should be(200)
    end
  end
end
