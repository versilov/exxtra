class MessageMailer < ActionMailer::Base
  default from: "i@exxtra.ru"
  
  def user_message(name, email, phone, message)
    @name = name
    if email.length > 3
      @email = email
    else
      @email = "stas.versilov@gmail.com"
    end
    @phone = phone
    @message = message
    mail :from => "#{name} <#{@email}>", :to => 'stas.versilov@gmail.com', :subject => "exxtra.ru: message from #{name}"
  end
end
