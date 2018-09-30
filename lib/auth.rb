require 'jwt'

class Auth

  # log in and sign up (create a token)
  def self.create_token(user_object)
    payload = {user: JSON.parse(user_object.to_json)}
    token = JWT.encode(payload, "school project", "HS256")
  end

# authenticate user (decode a token)
  def self.decode_token(token)
    decode = JWT.decode(token, "school project", true, {algorithm: "HS256"})
    return decode[0]["user"]
  end
end
