class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def show
    exam = Exam.find(params[:exam_id])
    @question = exam.questions.find(params[:id])
  end

  def new
    exam = Exam.find(params[:exam_id])
    @question = exam.questions.build
    @question = Question.new
    @question.answers.build
  end

  def create
    exam = Exam.find(params[:exam_id])

    @question = exam.questions.create(question_params)

      if @question.save
        redirect_to @question.exam, notice: "Exam created!"
      else
        render :new
      end

  end


  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to @question.exam
  end



  private
  def question_params
    params.require(:question).permit(:title, :timer, :exam_id, :correct, answers: [], sort: [])
  end

end
