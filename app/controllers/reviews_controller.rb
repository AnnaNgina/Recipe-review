class ReviewsController < ApplicationController
    def create
        rp = Review.create(rp_params)
        if rp.valid?
            render json: rp, status: :created
        else
  
            render json: {errors: review.errors }, status: :unprocessable_entity
        end
    end
  
    def destroy
        rp = Review.create(rp_params)
        if rp.valid?
          rp.destroy
            head :no_content, status: :no_content
        else
  
            render json: { error: "reviews not found" }, status: :not_found
        end
    end
  

    private
  
    def rp_params
        params.permit(:title, :description)
    end
end

end
