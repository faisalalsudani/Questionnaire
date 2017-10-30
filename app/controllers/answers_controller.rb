class AnswersController < ApplicationController
  def index
    @answers = Answer.all
  end

  def show
    question = Question.find(params[:question_id])
    @answer = question.answers.find(params[:id])
  end

  def new
    question = Question.find(params[:question_id])
    @answer = question.answers.build
    @answer = Answer.new
  end

  def create
    question = Question.find(params[:question_id])

    @answer = question.answers.create(question_params)

      if @answer.save
        redirect_to @question.exam, notice: "Exam created!"
      else
        render :new
      end
  end

  def destroy
    @answer = Answer.find(params[:id])
    @answer.destroy
    redirect_to @answer.question
  end



  private
  def answer_params
    params.require(:answer).permit(:title,:correct,:question_id)
  end
end
