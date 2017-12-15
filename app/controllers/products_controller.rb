class ProductsController < ApplicationController

     def new
          @user = current_user
          @category = Category.all
          @pattern = Pattern.all
          @product = Product.all
     end

     def show
          @category = Category.all
          @pattern = Pattern.all
          @product = Product.all
     end
     def create
          @product = Product.create(product_params)

          if @product.valid?
               puts "*************is valid product ******************"
               return redirect_to new_products_path
          end
          flash[:errors] = @product.errors.full_messages

          return redirect_to :back

     end

     def destroy

          @product = Product.find_by(id: params[:product][:product_id])
          @product.destroy

          return redirect_to :back

     end
  private
     def product_params
          params.required(:product).permit(:name, :price, :item_number, :category_id)
     end
end
