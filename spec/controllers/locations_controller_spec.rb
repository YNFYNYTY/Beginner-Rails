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

      expect(assigns(:locations)).to match_array([l1, l2])
      #match array not matter the order of the array
    end
  end

  describe "GET locations#show" do
    it "responds successfully with an HTTP 200 status code" do
      l1 = Location.create name: 'Home' , city: 'masion' , rate: 10
      get :show, id: l1.id
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it "renders the index template" do
      l1 = Location.create name: 'Home' , city: 'masion' , rate: 10
      get :show, id: l1.id
      expect(response).to render_template("show")
    end

    it "loads locations with the id passed into url" do
      l1 = Location.create name: 'Home' , city: 'masion' , rate: 10
	  get :show, id: l1.id

      expect(assigns(:locations)).to eq(l1)
      #match array not matter the order of the array
    end

     it "loads error template when id passed into url not exits" do
      get :show, id: 46678
      expect(response).to render_template("not_found")
    end
  end


 end
