class PagesController < ApplicationController
  def home
  end

  def sms
    @message = params[:message]
    @phone = params[:usrtel]
  end
end
