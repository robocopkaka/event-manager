# lib/json_web_tokem.rb
class JsonWebToken
  class << self
    def encode(payload, exp = 24.days.from_now.to_i)
      # set token expiration time
      payload[:exp] = exp
      JWT.encode(payload, Rails.application.credentials.secret_key_base)
    end

    # decode token
    def decode(token)
      body = JWT.decode(token,
                        Rails.application.credentials.fetch(:secret_key_base))
      HashWithIndifferentAccess.new body[0]

      # raise custom error to be handled by custom handler
    rescue JWT::ExpiredSignature, JWT::VerificationError => e
      raise ExceptionHandler::ExpiredSignature, e.message
    rescue JWT::DecodeError, JWT::VerificationError => e
      raise ExceptionHandler::DecodeError, e.message
    end
  end
end
