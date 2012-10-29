class CompetitionsController < ApplicationController

  expose(:competition)
  expose(:competition_map) { competition.to_gmaps4rails }
  expose(:competition_attributes) { competition.attributes }

end
