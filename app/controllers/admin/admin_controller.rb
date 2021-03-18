class Admin::AdminController < ApplicationController
  layout "admin"
  before_action :require_admin

  def require_admin
    return if current_user&.admin?

    flash[:notice] = t "admin_fail"
    redirect_to root_path
  end
end
