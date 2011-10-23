class MessageMailer < ActionMailer::Base
  default from: "i@exxxtra.ru"
  
  def user_message(name, email, phone, message)
    @name = name
    @email = email
    @phone = phone
    @message = message
    mail :from => "#{name} <#{email}>", :to => 'i@exxxtra.ru', :subject => "exxxtra.ru: message from #{name}"
  end
end
