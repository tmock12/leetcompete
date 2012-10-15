if Rails.env.development? || Rails.env.test?
  database_config = YAML::load_file("config/neo4j.yml")
  Keymaker.configure do |c|
    c.server = database_config["#{Rails.env}"]["server"]
    c.port = database_config["#{Rails.env}"]["port"]
  end
else
  # Heroku neo4j add-on
  Keymaker.configure do |c|
    c.server = ENV["NEO4J_HOST"]
    c.port = ENV["NEO4J_PORT"]
    c.username = ENV["NEO4J_LOGIN"]
    c.password = ENV["NEO4J_PASSWORD"]
  end
end
