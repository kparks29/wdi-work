require 'rubygems'
require 'twilio-ruby'
 
# Get your Account Sid and Auth Token from twilio.com/user/account
account_sid = 'AC3da6bf9aff4c00bca50e1f77e71906b8'
auth_token = '98bceb406b92a53c7ebfb52a9c87c170'
@client = Twilio::REST::Client.new account_sid, auth_token
 
message = @client.account.sms.messages.create(:body => "Test",
    :to => "+14805937374",     # Replace with your phone number
    :from => "+14805937374")   # Replace with your Twilio number
puts message.sid