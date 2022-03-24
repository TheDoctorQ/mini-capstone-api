class Product < ApplicationRecord
  
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, presence: true
  validates :description, length: { in: 10..500 }

  belongs_to :supplier
  has_many :images
  has_many :categories

  def is_discounted?
    price < 10
  end
  
  def tax
    price * 0.09
  end

  def total
    price + tax
  end
  
  
end
