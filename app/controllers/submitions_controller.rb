class SubmitionsController < ApplicationController

  def index
   exam = Exam.find(params[:exam_id])
   @submitions = Submition.all.where(exam_id: exam)
  end

  def show
    @submition = Submition.find(params[:id])
  end

  def new
    @submition = Submition.new
  end

  def create
    exam = Exam.find(params[:exam_id])

    @submition = exam.submitions.create(submition_params)

      if @submition.save
        redirect_to @submition.exam, notice: "Exam created!"
      else
        render :new
      end
  end

  private
  def submition_params
    params.require(:submition).permit(:title)
  end

end
