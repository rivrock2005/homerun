class ApplicationMailer < ActionMailer::Base
  default from: 'ashton.chris33@gmail.com'
  layout 'mailer'

  
    subject: "Welcome to My Awesome Site", body: 'I am the email body.').deliver_now

  end
