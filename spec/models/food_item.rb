require 'rails_helper'

RSpec.describe FoodItem, :type => :model do
  before(:each) do
    breakfast = Section.new(name: "Breakfast")
    @foodItem = FoodItem.new(name: "Chick Fil La", description: "Chick Fil La is amazingly good!", price: 9.99, section: breakfast)
  end

  it "is valid with valid attributes" do
    expect(@foodItem).to be_valid
  end

  it "is not valid without a title" do
    @foodItem.name = nil
    expect(@foodItem).to_not be_valid
  end

  it "is not valid without a description" do
    @foodItem.description = nil
    expect(@foodItem).to_not be_valid
  end

  it "is not valid without a price" do
    @foodItem.price = nil
    expect(@foodItem).to_not be_valid
  end

  it "description is at least 10 characters" do
    @foodItem.description = "Hello"
    expect(@foodItem.description.length).to be > 10
  end
  
end
