class HomeController < ApplicationController
  def index
    @recent_matches = Match.where.not(match_date: nil).order(match_date: :desc).limit(5)
  end
end 