class MainController < ApplicationController
  before_action :signed_in_user, only: [:quiz]
  
  def index
  end

  def quiz
  	@user = current_user
  	@questions = Question.all
  	@selection = ""
  end
end
