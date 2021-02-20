class StarsController < ApplicationController
  before_action :set_star, only: [:destroy]
  
  # POST /stars
  def create
    @star = Star.find_by('user_id = ? AND question_id= ?', User.first.id, params[:id])
    if @star
      if @star.destroy
        render json: {  star: "unstar" }
      else
        render json: { error: 'not_found'}
      end
    else
      stars = Star.new(user_id: User.first.id, question_id: params[:id])
      if stars.save 
        render json: {  star: "star" }
      else
        render json: { error: 'not_found'}
      end
    end
  end

  # DELETE /stars/1
  def destroy
    @star.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_star
      @star = Star.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def star_params
      params.require(:star).permit(:id)
    end
end
