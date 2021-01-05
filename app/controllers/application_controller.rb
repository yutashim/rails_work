class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  def user_loggedin?
    if current_user.nil?
       notice =  'ログインしてください'
      redirect_to new_session_path
    end
  end

end
