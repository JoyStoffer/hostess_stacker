class ProductDesc < ActiveRecord::Base
     belongs_to :pattern, required: true
     belongs_to :product, required: true
end
