class WxProgram::BaseController < ApplicationController
  def authenticate_user!
    private_token = params[:private_token]
    
    if private_token.blank?
      raise(Xexception::Unauthorized, "Miss the parameter 'private_token'.")
    end

    @current_user = User.find_by(private_token: private_token)
    
    if @current_user.nil?
      raise(Xexception::Unauthorized, "The 'private_token' is NOT existing.")
    end
  end
end
