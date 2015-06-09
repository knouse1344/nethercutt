class QuestionsController < ApplicationController
  before_action :signed_in_user, only: [:new, :create, :edit, :update, :destroy]

  # GET /Questions
  def index
    @questions = Question.all
  end

  # GET /Questions/1
  # GET /Questions/1.json
  def show
    @question = Question.find(params[:id])
  end

  # GET /Questions/new
  def new
    @correctArray = ["answer_a", "answer_b", "answer_c", "answer_d"]
    @question = Question.new
  end

  # GET /Questions/1/edit
  def edit
    @question = Question.find(params[:id])
  end

  # POST /Question
  # POST /Question.json
  def create
    @question = Question.new(question_params)

    respond_to do |format|
      if @question.save
        format.html { redirect_to '/main/quiz', notice: 'New Question created.' }
        format.json { render action: 'show', status: :created, location: @question }
      else
        format.html { render action: '/main/index' }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /Question/1
  # PATCH/PUT /Question/1.json
  def update
    respond_to do |format|
      if @question.update(question_params)
        format.html { redirect_to '/main/quiz', notice: 'Question updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /Question/1
  # DELETE /Question/1.json
  def destroy
    @question.destroy
    respond_to do |format|
      format.html { redirect_to '/main/quiz' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_params
      params.require(:question).permit(:question, :answer_a, :answer_b, :answer_c, :answer_d, :answer_correct, :factoid, :activity)
    end
end
