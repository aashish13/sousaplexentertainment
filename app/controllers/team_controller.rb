class TeamController < ApplicationController
  def index
    @talents=Talent.all
  end
end
