# encoding: utf-8

class SiteController < ApplicationController
  layout 'extraboot', :only => [:index, :inventions, :search_results]


  def send_message
    message = Message.new(:name => params[:name], :email => params[:email], :phone => params[:phone], :message => params[:message])
    message.save
    
    begin
      MessageMailer.user_message(params[:name], params[:email], params[:phone], params[:message]).deliver
    rescue Exception
      STDERR.puts "Error while sending email: #{$!}"
      raise
    end
    
    respond_to do |format|
      format.html { redirect_to '/contacts', :notice => 'Ваше сообщение отправлено, спасибо. Мы ответим вам как можно скорее.' }
    end
  end

  def why_samara
    @page_title = "Почему Самара?"
  end

  def boxes
    #render :layout => false
  end


 
end
