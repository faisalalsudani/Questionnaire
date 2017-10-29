class ExamsController < ApplicationController
  def index
    @exams = Exam.all
    @questions = Question.new
  end

  def new
    @exam = Exam.new
  end

  def create
    @exam = Exam.new(exam_params)
    if @exam.save
      redirect_to @exam, notice: "Exam created!"
    else
      render :new
    end
  end

  def show
    @exam = Exam.find(params[:id])
    @questions = @exam.questions
    @question = Question.new
  end

  def destroy
    @exam = Exam.find(params[:id])
    @exam.destroy

    redirect_to action: "index"
  end

  private
  def exam_params
    params.require(:exam).permit(:title)
  end
end
