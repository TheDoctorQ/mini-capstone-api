class Product < ApplicationRecord
  
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, presence: true
  validates :description, length: { in: 10..500 }

  belongs_to :supplier
  has_many :images

  def is_discounted?
    price < 10
  end
  
  def tax
    price * 0.09
  end

  def total
    price + tax
  end
  
  belongs_to :supplier
  has_many :images
  # ^ does the same as below
  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

end
