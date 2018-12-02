module RubyWechat
  DEFAULT_TIMEOUT = 20
  DEFAULT_OPEN_TIMEOUT = 10

  DEFAULT_HEADERS = {
    :content_type => :json,
    :accept => :json
  }

  APPID = Figaro.env.wechat_app_id
  SECRET = Figaro.env.wechat_secret
  NONCESTR = Figaro.env.wx_noncestr

  APPID_FOR_MOBILE = Figaro.env.wechat_app_id_for_mobile
  SECRET_FOR_MOBILE = Figaro.env.wechat_secret_for_mobile
  
end