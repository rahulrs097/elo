class HomeController < ApplicationController
  def index
    @tournaments = Match.pluck(:tournament).uniq
  end
end
