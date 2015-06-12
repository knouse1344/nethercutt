class MainController < ApplicationController
  before_action :signed_in_user, only: [:quiz]
  
  def index
  end

  def quiz
  	@questions = Question.all
  end
end
