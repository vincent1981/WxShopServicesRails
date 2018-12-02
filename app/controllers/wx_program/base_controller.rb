class WxProgram::BaseController < ApplicationController
  def authenticate_user!
    access_token = params[:access_token]
    
    if private_token.blank?
      raise(Xexception::Unauthorized, "Miss the parameter 'private_token'.")
    end
    
    @current_user = WxUser.find_by(:access_token => access_token).try(:user)
    
    if @current_user.nil?
      raise(Xexception::Unauthorized, "The 'private_token' is NOT existing.")
    end
  end
end
