class SessionsController < ApplicationController
  def create
    auth = request.env["omniauth.auth"]
    user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) || User.create_with_omniauth(auth)
    session[:user_id] = user.id
    redirect_to root_url, :notice => "<h3>Welcome back #{user.name} :)</h3>"
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "<h3>Sorry to see you go :(</h3>"
  end
  
  def failure
    redirect_to root_url, :alert => "<h3>Authentication failed, please try again."
    
  end
end
