# encoding: utf-8

class SiteController < ApplicationController
  def home
  end
  
  def contacts
    @message = "message"
  end
  
  def send_message
    puts params[:name]
    puts params[:email]
    puts params[:phone]
    puts params[:message]
    respond_to do |format|
      format.html { redirect_to '/contacts' }
    end
  end

end
