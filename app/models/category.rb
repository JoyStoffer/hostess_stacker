class Category < ActiveRecord::Base

     has_many :products


     before_save :downcase

     validates :name, presence: true, length: {minimum: 2}


     def downcase
          self.name.downcase!

     end
end
