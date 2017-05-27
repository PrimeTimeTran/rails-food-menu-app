require "rails_helper"

RSpec.describe "routing", :type => :routing do
    it "routes /menu to users#new" do
      expect(:get => "/menu").to route_to(
      :controller => "home",
      :action => "menu"
      )
  end

  it "routes /menu to users#new" do
    expect(:get => "/food_items").to route_to(
    :controller => "food_items",
    :action => "index"
    )
end

end
