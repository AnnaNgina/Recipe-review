class ReviewsController < ApplicationController
    def create
        rp = Review.create(rp_params)
        if rp.valid?
            render json: rp, status: :created
        else
  
            render json: {errors: review.errors }, status: :unprocessable_entity
        end
    end
  
#     def destroy
#         rp = Review.create(rp_params)
#         if rp.valid?
#           rp.destroy
#             head :no_content, status: :no_content
#         else
  
#             render json: { error: "reviews not found" }, status: :not_found
#         end
#     end
  

#     private
  
#     def rp_params
#         params.permit(:title, :description)
#     end
# end
def index
    review =Review.all
    render json: Review.all, status: :ok
   end    

def show
    review = Review.find_by(id: params[:id])
  if review
      render json: review, status: :ok
  else
      render json: {error: "Review not found"}, status: :not_found
  end
end

def destroy 
    review = Review.find_by(id: params[:id]) 

    if review.destroy 
    head :no_content

     else 
        render json: { error: review.errors.messages }, status: 422
    end 
    end 
    

end
