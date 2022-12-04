class ApplicationController < ActionController::Base
  before_action :restart_collapse_count

  def restart_collapse_count
    @collapse = 0
  end
end
