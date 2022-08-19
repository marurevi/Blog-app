module ApplicationHelper
  def current_user
    @current_user = User.first
  end
end
