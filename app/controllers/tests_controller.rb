class TestsController < ApplicationController

  def index
     @exam = Exam.find(params[:exam_id])
     @test = Test.all.where(exam_id: @exam)
    end

    def show
      @test = Test.find(params[:id])
    end

    def new
      @exam = Exam.find(params[:exam_id])
      @test = @exam.tests.new
      @questions = @exam.questions
    end

    def create
      exam = Exam.find(params[:exam_id])
      @test = exam.tests.create(test_params)

        if @test.save
          redirect_to @test.exam, notice: "Exam created!"
        else
          render :new
        end
    end

    private
    def test_params
      params.require(:test).permit(
        :exam_id,
        :user_id,
        :answers => []
      )
    end

end
