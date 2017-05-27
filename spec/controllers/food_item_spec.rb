require "rails_helper"

RSpec.describe FoodItemsController, :type => :controller do
    describe "GET #index" do
      it "responds successfully with an HTTP 200 status code" do
        get :index
        expect(response).to be_success
        expect(response).to have_http_status(200)
      end

      it "renders the index template" do
        get :index
        expect(response).to render_template("index")
      end

      it "post #create" do
        breakfast = Section.new(name: "Breakfast")
        post :create, :params => { :food_item => { name: "Chick Fil La", description: "Chick Fil La is amazingly good!", price: 9.99, section: breakfast}, :format => :json }
      end

      it "passes @food_items from controller to view" do
        breakfast = Section.new(name: "Breakfast")
        foodItem = FoodItem.create(name: "Chick Fil La", description: "Chick Fil La is amazingly good!", price: 9.99, section: breakfast)
        foodItem.save
        get :index
        expect(assigns(:food_items)).to_not be nil
      end
  end
end
