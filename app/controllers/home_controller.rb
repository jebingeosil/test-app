class HomeController < ApplicationController
	before_filter :authorize_manager, only: :manager_dashboard
  def index
  end

  def dashboard
  	@activities = current_user.get_all_activities
  end

  def manager_dashboard
  end

  private

  def authorize_manager
  	redirect_to root_path unless current_user.role == "manager"
  end
end
