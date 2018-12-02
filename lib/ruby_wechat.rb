module RubyWechat
  class << self
    # code2Session
    def authenticate_code_for_wxprogram(code)
      request_url = 'https://api.weixin.qq.com/sns/jscode2session'

      valid, api_result = RubyWechat.authenticate_code(
                            request_url,
                            {:js_code => code},
                            RubyWechat::APPID,
                            RubyWechat::SECRET
                          )
      unless valid
        # Xexception.raise_if_exceptional!(
        #   api_result[:error],
        #   api_result[:err_msg]
        # )
      end

      Rails.logger.debug("OAuth2 for wxprogram = #{api_result}")
      api_result
    end
    
    
    
    def authenticate_code(url, params, appid, secret)
      params.merge!(
        :appid      => appid,
        :secret     => secret,
        :grant_type => 'authorization_code')
      byebug
      result = get(url, params)
      
      Rails.logger.debug("OAuth2 access token = #{result}")
      
      result
    end

    private

    def get(url, params, options = {})
      default_params =
        {
          :method       => :get,
          :url          => url,
          :timeout      => DEFAULT_TIMEOUT,
          :open_timeout => DEFAULT_OPEN_TIMEOUT,
          :headers      => DEFAULT_HEADERS.merge!(:params => params)
        }
        byebug
      response = RestClient::Request.execute(default_params.merge(options))

      response_body = response.body
      result = HashWithIndifferentAccess.new(JSON.parse(response_body))

      err_code = result[:errcode]
        byebug
      if err_code.nil?
        [true, result]
      else
        [false, { :error => Xerror::UNEXPECTED, :err_msg => result.to_s }]
      end
    end
  end
end