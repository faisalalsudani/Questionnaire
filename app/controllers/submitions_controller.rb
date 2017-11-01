class SubmitionsController < ApplicationController

  def index
    @exam = Exam.find(params[:exam_id])
    @submitions = Submition.all.where(exam_id: "#{@exam.id}")
  end


  def new
    @submition = Submition.new
  end

  def create
    exam = Exam.find(params[:id])
    @question = exam.questions.create(question_params)

    if @submition.save
      redirect_to @submition, notice: "Exam created!"
    else
      render :new
    end
  end

  private
  def submition_params
    params.require(:submition).permit(
      :title,
      :exam_id,
      :user_id,
      # questions_attributes:[:title, :question_id], 
      # answers_attributes:[:title]
    )
  end

end
