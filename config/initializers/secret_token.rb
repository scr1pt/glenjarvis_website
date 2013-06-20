# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.

# This is not a secret if it's in the repo. Create random secret token on server build
GlenjarvisCom::Application.config.secret_token = 'this_is_a_dictionary_attack_waiting_to_happen'
