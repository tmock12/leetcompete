class CompetitionsController < ApplicationController
  expose(:competition)
  expose(:competition_attributes) { competition.attributes }
end
