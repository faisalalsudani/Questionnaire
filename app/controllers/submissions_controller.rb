class SubmissionsController < ApplicationController
  def index
   @exam = Exam.find(params[:exam_id])
   @submission = Submission.all.where(exam_id: @exam)
  end

  def show
    @submission = Submission.find(params[:id])
  end

  def new
    @exam = Exam.find(params[:exam_id])
    @submission = @exam.submissions.new

    @questions = @exam.questions
  end

  def create
    exam = Exam.find(params[:exam_id])
    @submission = exam.submissions.create(submission_params)

      if @submission.save
        redirect_to @submission.exam, notice: "Exam created!"
      else
        render :new
      end
  end

  private
  def submission_params
    params.require(:submission).permit(
      :exam_id,
      :user_id,
      :option,
      questions_attributes:[:title,:timer,:exam_id],
      answers_attributes:[:title,:question_id]
    )
  end
end
