class User < ActiveRecord::Base
  include Authem::User
  attr_accessible :email, :username, :password, :password_confirmation
end
