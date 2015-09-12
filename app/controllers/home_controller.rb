class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    puts "------------------------Aashish Singh------------------------------"
    puts current_user.admin
    @projects=Project.all
  end
end
