class SubmissionsController < ApplicationController

  def index
   @exam = Exam.find(params[:exam_id])
   @submission = Submission.all.where(exam_id: @exam)
  end

  def new
    @exam = Exam.find(params[:exam_id])
    @submission = @exam.submissions.new
    @questions_total = @exam.questions.all
    @questions = @exam.questions.all
  end

  def show
    @exam = Exam.find(params[:exam_id])
    @submission = @exam.submissions.find(params[:id])

    @questions = @exam.questions.all
  end

  def create
    exam = Exam.find(params[:exam_id])
    @submission = exam.submissions.create(submission_params)

    if @submission.save
      redirect_to action: "show", id: @submission
    else
      render :new
    end
  end

  private
  def submission_params
    params.require(:submission).permit(
      :exam_id,
      :user_id,
      ann: {}
    )
  end

end
