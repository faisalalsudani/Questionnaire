class UserExamsController < ApplicationController

  def index
    @userExams = UserExam.all
  end

  def new
    @userExam = UserExam.new
    @exams = Exam.all
    @users = User.all
  end

  def create
    @exams = Exam.all
    @users = User.all
    @userExam = UserExam.new(userExam_params)
    if @userExam.save
      redirect_to @userExam, notice: "Exam created!"
    else
      render :new
    end
  end

  private
  def userExam_params
    params.require(:user_exam).permit(:user_id, exams:[])
  end

end
