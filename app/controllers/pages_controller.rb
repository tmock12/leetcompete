class PagesController < ApplicationController
  expose(:competitions) { current_user.competitions }
  expose(:competitions_map) do
    competitions.to_gmaps4rails do |competition, marker|
      marker.infowindow render_to_string(:partial => "/competitions/info_window",
                                         :locals => { :competition => competition})
      marker.title "#{competition.title}"
      marker.json({id: competition.id})
    end
  end
end
