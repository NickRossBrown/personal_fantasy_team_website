class ApplicationController < ActionController::Base

  def set_dropdown_variables 
    @teams = Team.all
    @seasons = Season.all
    @abouts = About.all
  end
end
