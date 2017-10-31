class AttemptsController < ApplicationController

  def create
    @attempt = current_user.attempts.create(attempt_params)

    redirect_to @attempt.exam, notice: "Thank you!"
  end

  private

  def attempt_params
    params.require(:attempt).permit(:att_num, :exam_id, :user_id, exam_attributes:[:title])
  end

end
