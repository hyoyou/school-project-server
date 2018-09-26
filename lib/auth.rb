require 'jwt'

class Auth

class Auth
  def self.create_token(user_object)
    payload = {user: JSON.parse(user_object.to_json)}
    token = JWT.encode(payload, "school project", "HS256")
  end

  def self.decode_token(token)
    decode = JWT.decode(token, "school project", true, {algorithm: "HS256"})
    return decode[0]["user"]
  end
end