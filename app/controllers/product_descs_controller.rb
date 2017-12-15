class ProductDescsController < ApplicationController

     def new
          @pattern = Pattern.all
          @product = Product.all
     end

     def show
          @pattern = Pattern.all
          @product = Product.all
          @proddesc =ProductDesc.all
     end
     def create
          @productdesc = ProductDesc.create(product_desc_params)

          if @productdesc.valid?
               puts "*************is valid product ******************"
               return redirect_to new_products_path
          end
          flash[:errors] = @productdesc.errors.full_messages

          return redirect_to :back

     end

     def destroy

          @proddesc = ProductDesc.find_by(id: params[:product_desc][:product_desc_id])
          @proddesc.destroy

          return redirect_to :back

     end

     private
          def product_desc_params
               params.require(:product_desc).permit(:pattern_id, :product_id)

          end
end
