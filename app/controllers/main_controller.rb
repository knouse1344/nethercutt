class MainController < ApplicationController
  before_action :signed_in_user, only: [:quiz]
  
  def index
  	@user = current_user
  end

  def quiz
  	@user = current_user
  	@questions = Question.all
  	@selection = ""
  end

  def scorecard
  	@user = current_user
  end
end
