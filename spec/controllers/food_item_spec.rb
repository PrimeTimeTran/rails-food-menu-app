require "rails_helper"

RSpec.describe FoodItemsController, :type => :controller do
  describe "GET #index" do
    it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
      expect(response).to render_template("index")
    end

    it "passes @food_items from controller to view" do
      breakfast = Section.new(name: "Breakfast")
      foodItem = FoodItem.create(name: "Chick Fil La", description: "Chick Fil La is amazingly good!", price: 9.99, section: breakfast)
      foodItem.save
      get :index
      expect(assigns(:food_items)).to_not be nil
    end
  end

  describe "POST #create" do
    it "doesn't accept a post without params" do
      expect { FoodItem.create! }.to raise_error(ActiveRecord::RecordInvalid)
    end

    it "successfully creates a new item" do
      breakfast = Section.new(name: "Breakfast")
      post :create, :params => { :food_item => { name: "Chick Fil La", description: "Chick Fil La is amazingly good!", price: 9.99, section: breakfast}, :format => :json }
      expect(assigns(:food_item)).to_not be nil
    end
  end
end
