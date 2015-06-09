class Question < ActiveRecord::Base
	attr_accessible :question, :answer_a, :answer_b, :answer_c, :answer_d, :answer_correct, :factoid, :activity
end
