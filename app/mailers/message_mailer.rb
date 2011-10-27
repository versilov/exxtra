class MessageMailer < ActionMailer::Base
  default from: "i@exxtra.ru"
  
  def user_message(name, email, phone, message)
    @name = name
    @email = email
    @phone = phone
    @message = message
    mail :from => "#{name} <#{email}>", :to => 'stas.versilov@gmail.com', :subject => "exxxtra.ru: message from #{name}"
  end
end
