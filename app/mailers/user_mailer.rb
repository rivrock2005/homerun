class UserMailer < ApplicationMailer
  default from: "ashton.chris33@gmail.com"

  def contact_form(email, name, message)
    @message = message
    mail(from: email,
      to: 'rrarafting@gmail.com',
      subject: "A new contact form message from #{name}")
    end

    def welcome(user)
      @appname = "Raft California"
      mail(to: user.email,
        subject: "Welcome to #{@appname}!")
      end
    end
