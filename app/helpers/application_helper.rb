module ApplicationHelper
  def admin?
    current_user && current_user.is_admin
  end
end
