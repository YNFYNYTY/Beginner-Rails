require 'rails_helper'

RSpec.describe LocationsController, :type => :controller do

	describe "GET locations#index" do
    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end

    it "loads all of the locations into @locations" do
      l1 = Location.create name: 'Home' , city: 'masion' , rate: 10
      l2 = Location.create name: 'Home2' , city: 'masion2' , rate: 10

      get :index

      expect(assigns(:locations)).to eq([l1, l2])
    end
  end


end
