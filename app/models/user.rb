class User < ActiveRecord::Base

  include Authem::User

  attr_accessible :email, :username, :password, :password_confirmation

  has_many :competitions, dependent: :destroy

  def name
    username or email
  end

end
