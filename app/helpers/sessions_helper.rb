module SessionsHelper

 def log_in(user)
  session[:user_id] = user.id
 end

 def current_user
   if session[:users_id]
     @current_user ||= Admin.find_by(session[:user_id])
   end
 end

 def logged_in?
   !current_user.nil?
 end

end
