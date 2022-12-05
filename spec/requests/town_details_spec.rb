require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/town_details", type: :request do
  
  # This should return the minimal set of attributes required to create a valid
  # TownDetail. As you add validations to TownDetail, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      TownDetail.create! valid_attributes
      get town_details_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      town_detail = TownDetail.create! valid_attributes
      get town_detail_url(town_detail)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_town_detail_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "renders a successful response" do
      town_detail = TownDetail.create! valid_attributes
      get edit_town_detail_url(town_detail)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new TownDetail" do
        expect {
          post town_details_url, params: { town_detail: valid_attributes }
        }.to change(TownDetail, :count).by(1)
      end

      it "redirects to the created town_detail" do
        post town_details_url, params: { town_detail: valid_attributes }
        expect(response).to redirect_to(town_detail_url(TownDetail.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new TownDetail" do
        expect {
          post town_details_url, params: { town_detail: invalid_attributes }
        }.to change(TownDetail, :count).by(0)
      end

    
      it "renders a response with 422 status (i.e. to display the 'new' template)" do
        post town_details_url, params: { town_detail: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested town_detail" do
        town_detail = TownDetail.create! valid_attributes
        patch town_detail_url(town_detail), params: { town_detail: new_attributes }
        town_detail.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the town_detail" do
        town_detail = TownDetail.create! valid_attributes
        patch town_detail_url(town_detail), params: { town_detail: new_attributes }
        town_detail.reload
        expect(response).to redirect_to(town_detail_url(town_detail))
      end
    end

    context "with invalid parameters" do
    
      it "renders a response with 422 status (i.e. to display the 'edit' template)" do
        town_detail = TownDetail.create! valid_attributes
        patch town_detail_url(town_detail), params: { town_detail: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested town_detail" do
      town_detail = TownDetail.create! valid_attributes
      expect {
        delete town_detail_url(town_detail)
      }.to change(TownDetail, :count).by(-1)
    end

    it "redirects to the town_details list" do
      town_detail = TownDetail.create! valid_attributes
      delete town_detail_url(town_detail)
      expect(response).to redirect_to(town_details_url)
    end
  end
end