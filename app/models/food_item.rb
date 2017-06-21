class FoodItem < ApplicationRecord
  belongs_to :user
  belongs_to :section
  has_many :order_items
  has_many :reviews, dependent: :destroy
  validates :name, :section, :price, presence: true
  validates :description, length: { minimum: 10 }, presence: true

  def image_url_or_auto
    if image_url.present?
      image_url
    else
      "http://loremflickr.com/320/240/#{name}"
    end
  end

  def new_order_item
    order_items.build
  end

  def self.filter_by_section(section)
    where(section: params[:section])
  end
end
