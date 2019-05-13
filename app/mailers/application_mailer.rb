class ApplicationMailer < ActionMailer::Base
  default from: 'ashton.chris33@gmail.com'
  layout 'mailer'

ActionMailer::Base.mail(from: 'from@domain.com', 
	to: 'to@domain.com', subject: "Welcome to My Awesome Site", 
	body: 'I am the email body.').deliver_now


end
