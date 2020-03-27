class ApplicationController < ActionController::API
  def token(user_id)
    payload = { user_id: user_id }
    JWT.encode(payload, hmac_secret, 'HS256')
  end

  def hmac_secret
    ENV['API_SECRET_KEY']
  end

  def current_user_id
    begin
      token = request.headers['Authorization']
      decoded_array = JWT.decode(token, hmac_secret, true, { algorithm: 'HS256' })
      payload = decoded_array.first
    rescue StandardError # JWT::VerificationError
      return nil
    end
    payload['user_id']
  end

  def client_has_valid_token?
    !!current_user_id
  end

  def require_login
    unless client_has_valid_token?
      render json: { error: 'Unauthorized' }, status: :unauthorized
    end
  end
end
