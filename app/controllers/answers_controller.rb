class AnswersController < ApplicationController
  before_action :authorized

  # GET /answers
  def index
    @answers = Answer.all

    render json: @answers
  end

  # POST /answers
  def create
    @answer = Answer.new(answer_params)

    if @answer.save
      render json: @answer, status: :created, location: @answer
    else
      render json: @answer.errors, status: :unprocessable_entity
    end
  end

  private

    # Only allow a trusted parameter "white list" through.
    def answer_params
      params.require(:answer).permit(:question, :answer)
    end
end
