require 'ruby_wechat'

class WxProgram::UsersController < WxProgram::BaseController
  def login
    wx_params = params.permit(:code, :encryptedData, :iv)

    result = RubyWechat.authenticate_code_for_wxprogram(wx_params[:code])
    wx_user_info = User.aes_dicrypt(wx_params[:encryptedData], 
        result[:session_key], wx_params[:iv])

    user = User.find_by(:unionid => result[:unionid])
    user ||= create_user!(wx_user_info[:nickName], wx_user_info[:unionId])

    user.wx_user.reset_access_token
    
    @current_user = user
  end

  private
    
  def create_user!(nickname, unionid)
    user = User.new(:nickname => nickname, :unionid => unionid)
    user.build_wx_user
    user.save!
    user
  end
end
