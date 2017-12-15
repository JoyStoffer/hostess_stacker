class Pattern < ActiveRecord::Base
     has_many :products
     has_many :product_descs

     before_save :downcase

     validates :name, presence: true

     def downcase
          self.name.downcase!

     end
end
