require 'bcrypt'

class User
  include Mongoid::Document

  attr_accessor :password

  field :name, type: String
  field :hashed_password, type: String
  field :salt, type: String

  before_save :hash_stuff

  def authenticated?(pwd)
  	self.hashed_password == BCrypt::Engine.hash_secret(pwd, self.salt)
  end

  private

  def hash_stuff
  	self.salt = BCrypt::Engine.generate_salt
  	self.hashed_password = BCrypt::Engine.hash_secret(self.password, self.salt)
  	@password = nil
  end
end
