class FoodItem < ApplicationRecord
  validates :name, :section, :price, presence: true
  validates :description, length: { minimum: 10 }, presence: true
  belongs_to :section
  has_many :orders, dependent: :destroy

  def image_url_or_auto
    if image_url.present?
      image_url
    else
      "http://loremflickr.com/320/240/#{name}"
    end
  end

  def self.filter_by_section(section)
    where(section: params[:section])
  end
end
