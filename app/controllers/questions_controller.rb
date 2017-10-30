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
    4.times { @question.answers.build }
  end

  def create
    exam = Exam.find(params[:exam_id])

    @question = exam.questions.create(question_params)
    @answers = Answer.create(params[:answers])

      if @question.save
        redirect_to @question.exam, notice: "Exam created!"
      else
        render :new
      end

  end

  # def edit
  #   artist = Artist.find(params[:artist_id])
  #   @song = artist.songs.find(params[:id])
  # end
  #
  # def update
  #   artist = Artist.find(params[:artist_id])
  #
  #   @song = artist.songs.find(params[:id])
  #
  #   if @song.update_attributes(song_params)
  #     redirect_to @song.artist, notice: "Song updated"
  #   else
  #     render :edit
  #   end
  #
  # end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to @question.exam
  end



  private
  def question_params
    params.require(:question).permit(:title,:timer,:exam_id,answers_attributes: Answer.attribute_names.map(&:to_sym).push(:_destroy), :sort => [])
  end

end
