class QuestionsController < ApplicationController
  include StarHelper
  before_action :set_question, only: [:show]
  # GET /questions
  def index
    @questions = Question.all.order(created_at: :desc)
    res = @questions.map do |q|  
      {
        id: q.id,
        title: q.title,
        body: q.body,
        stared: star?(q.id),
        comments: (100 * rand()).floor() 
      }
    end
    render json: { questions: res }
  end

  # POST /questions
  def create
    @question = User.first.questions.build(question_params)
    if @question.save
      @questions = Question.all.order(created_at: :desc)
      render json: { questions: @questions }
    else
      render json: { error: @question.errors.full_messages[0] }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def question_params
      params.require(:question).permit(:title, :body)
    end
end
