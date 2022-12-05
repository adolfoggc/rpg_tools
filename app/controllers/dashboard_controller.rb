class DashboardController < ApplicationController
  def home
    @towns = Town.all.count
  end
end
