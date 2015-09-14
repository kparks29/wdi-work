# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Oauth::Application.config.secret_key_base = '1ca7e466d3db331814c8e5ab4a28aca7dc7707e1470e97522958a463e91471af22bc4c3e122613324826a907dfd8606df25e225073a2d5329027941853e13156'
