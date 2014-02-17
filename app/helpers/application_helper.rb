module ApplicationHelper
  def is_admin? 
    session[:admin].present?
  end
  def current_user
    session[:admin]
  end
end
