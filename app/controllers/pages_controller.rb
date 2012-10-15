class PagesController < ApplicationController 

  expose(:users) { User.all }

end
