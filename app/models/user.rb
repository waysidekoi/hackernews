require 'bcrypt'
class User < ActiveRecord::Base

  include BCrypt
  has_many :posts
  has_many :comments
  has_many :comment_votes
  has_many :post_votes


  # users.password_hash in the database is a :string


  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end


end
