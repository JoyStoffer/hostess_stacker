class CategoriesController < ApplicationController
     def create
          @category = Category.create(category_params)

          if @category.valid?
               return redirect_to new_products_path
          end
          flash[:errors] = @category.errors.full_messages

          return redirect_to :back

     end
     def show
          @category = Category.find_by(params[:id])
     end

     def destroy

          @category = Category.find_by(id: params[:category][:category_id])
          @category.destroy

          return redirect_to :back

     end
   private
     def category_params
          params.required(:category).permit(:name)

     end
end
