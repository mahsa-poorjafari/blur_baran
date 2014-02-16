class UserMailer < ActionMailer::Base
  default from: "web.development@raush.ir"
  
  def send_user_mail
    mail(to: User.all.collect(&:email).join(','), subject: 'mail subject')
  end
end
