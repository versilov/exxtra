# encoding: utf-8

class SiteController < ApplicationController
  
  def send_message
    puts params[:name]
    puts params[:email]
    puts params[:phone]
    puts params[:message]
    
    MessageMailer.user_message(params[:name], params[:email], params[:phone], params[:message]).deliver
    respond_to do |format|
      format.html { redirect_to '/contacts', :notice => 'Ваше сообщение отправлено, спасибо. Мы ответим вам как можно скорее.' }
    end
  end

end
