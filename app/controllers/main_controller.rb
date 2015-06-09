class MainController < ApplicationController
  def index
  end

  def quiz
  	@questions = Question.all
  end
end
