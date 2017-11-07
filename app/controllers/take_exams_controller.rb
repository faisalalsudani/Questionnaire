class TakeExamsController < ApplicationController
  def index
    @take = TakeExams.all
  end

  def show
    @take = TakeExams.find(params[:id])
  end

end
