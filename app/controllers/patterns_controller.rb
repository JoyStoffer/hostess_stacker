class PatternsController < ApplicationController
     def create
          @pattern = Pattern.create(pattern_params)

          if @pattern.valid?
               return redirect_to new_products_path
          end
          flash[:errors] = @pattern.errors.full_messages

          return redirect_to :back

     end
     def show
          @pattern = Pattern.find(params[:id])
     end

     def destroy

          @pattern = Pattern.find_by(id: params[:pattern][:pattern_id])
          @pattern.destroy

          return redirect_to :back

     end
  private
     def pattern_params
          params.required(:pattern).permit(:name)

     end
end
