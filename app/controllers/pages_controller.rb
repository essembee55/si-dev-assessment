class PagesController < ApplicationController
  def home
  end

  def sms
    @textmessage = params[:message]
    @phone = params[:usrtel]
    account_sid = 'ACd333927084fe652886c7d2e981076d70' 
    auth_token = '5d2a1364df47f337fa10eee629c98ec4' 
    @client = Twilio::REST::Client.new account_sid, auth_token
    msg = @client.account.messages.create(
      from: '+14133010510',
      to: @phone,
      body: @textmessage
    )

  puts msg.sid

  end
end
