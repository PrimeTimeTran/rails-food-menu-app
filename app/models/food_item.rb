class FoodItem < ApplicationRecord
  validates :name, :section, :price, presence: true
  belongs_to :section
  has_many :orders, dependent: :destroy # Testing this one out to see if it fixes the underfined method error

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


    def self.search(query_hash)
       result = all
       result = result.where("title like ?", "%#{query_hash[:name]}%") if query_hash[:name]
       result = result.where("body like ?", "%#{query_hash[:description]}%") if query_hash[:description]
       result
    end

end
