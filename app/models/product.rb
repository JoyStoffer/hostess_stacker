class Product < ActiveRecord::Base
  belongs_to :category, required: true

  has_many :product_descs, dependent: :destroy
  has_many :descriptions, through: :product_descs, source: :pattern

  before_save :downcase

  validates :name, presence: true, length: {minimum: 2}
  validates :price, numericality: true, format:  { with: /\A\d{1,4}(.\d{0,2})?\z/ }
  validates :item_number, numericality: true, length:{ is: 4 }


  def downcase
       self.name.downcase!

  end
end
