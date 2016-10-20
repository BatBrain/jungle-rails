class Product < ActiveRecord::Base
  include  ActionView::Helpers::NumberHelper

  has_many :reviews

  monetize :price_cents, numericality: true
  mount_uploader :image, ProductImageUploader

  belongs_to :category

  validates :name, presence: true
  validates :price, presence: true
  validates :quantity, presence: true
  validates :category, presence: true

  def formatted_price
    number_to_currency(price, precision: 2)
  end
end
