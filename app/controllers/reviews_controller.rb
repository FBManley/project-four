class ReviewsController < ApplicationController
    nefore_action :find_review, only: [:update, :delete]
    # POST /reviews 
    def create 
        if logged_in? 
            @review = current_user.reviews.build(review_params)
            if @review.save 
                render json: @review, status: 201   
            else 
                render json: { errors: @review.errors.full_messages }, status : 422
            end
        else 
            must_be_logged_in
        end
    end
    # PATCH /reviews/:id
    def update 
    end
    # DELETE /reviews/:id
    def destroy
    end

    private 
    def review_params
        params.require(:review).permit(:review, :movie_id)
    def find_review
    @review = Review.find_by_id(params[:id])
    end
end
