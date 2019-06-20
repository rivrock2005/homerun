class UserMailer < ApplicationMailer
  default from: "from@example.com"

  def contact_form(email, name, message)
    @message = message
    mail(from: email,
      to: 'ashton.chris33@gmail.com',
      subject: "A new contact form message from #{name}")
    end

    def welcome(user)
      @appname = "Raft California"
      mail(to: user.email,
        subject: "Welcome to #{@appname}!")
      end
    end
