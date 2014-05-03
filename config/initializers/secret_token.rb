# Be sure to restart your server when you modify this file.

# This code from Michael Hartl's excellent rails tutorial:
# http://ruby.railstutorial.org/chapters/static-pages#code-secret_token

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

require 'securerandom'

def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file)
    # Use the existing token.
    File.read(token_file).chomp
  else
    # Generate a new token and store it in token_file.
    token = SecureRandom.hex(64)
    File.write(token_file, token)
    token
  end
end

GlenJarvisCom::Application.config.secret_key_base = secure_token
