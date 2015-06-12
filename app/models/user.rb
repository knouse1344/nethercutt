class User < ActiveRecord::Base
	attr_accessible :username, :name, :score, :password, :password_confirmation
	has_secure_password

	before_save { self.username = username.downcase }
	before_create :create_remember_token
	before_create :set_score
	validates :username, presence: true, uniqueness: true
	validates :password, length: { minimum: 5 }
	validates :password_confirmation, presence: true

	def set_score
		self.score = 0
	end

	def User.new_remember_token
	SecureRandom.urlsafe_base64
	end

	def User.digest(token)
	Digest::SHA1.hexdigest(token.to_s)
	end

	private

		def create_remember_token
		  self.remember_token = User.digest(User.new_remember_token)
		end
end