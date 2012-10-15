class CompetitionsController < ApplicationController

  expose(:competition)
  expose(:competition_map) do
    competition.to_gmaps4rails
  end
  expose(:competition_attributes) { competition.attributes }

end
