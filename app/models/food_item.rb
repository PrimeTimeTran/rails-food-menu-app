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

  def self.search(term, current_page)
    current_page ||= 1 

    if term
      where('name LIKE ?', "%#{term}%").paginate(page: current_page.to_i, per_page: 10).order('id DESC')
    else
      paginate(page: current_page.to_i, per_page: 10).order('id DESC')
    end
  end
end
