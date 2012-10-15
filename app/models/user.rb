class User

  attr_accessor :password, :password_confirmation, :email, :username

  # include Authem::User
  #  for method: validates_uniqueness_of in Authem
  # include ActiveRecord::Validations
  #  for method: has_secure_password in Authem
  # include ActiveModel::SecurePassword
  include Keymaker::Node

  def name
    self.username || self.email
  end

  def self.all
    query =  "START v1=node:nodes('node_type:User') RETURN v1"
    find_all_by_cypher(query)
  end

  def self.destroy_all
    query = "START v1=node:nodes('node_type:User') DELETE v1"
    find_all_by_cypher(query)
  end

  def self.where(arg={})
    query = "START v1=node:nodes('node_type:User') WHERE v1.#{arg.keys.first} = '#{arg.values.first}' RETURN v1"
    find_all_by_cypher(query).first
  end

  property :email
  property :username
  property :salt
  property :crypted_password

end
