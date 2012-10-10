class Session
  attr_accessor :email, :password

  def self.model_name
    'session'
  end
end
