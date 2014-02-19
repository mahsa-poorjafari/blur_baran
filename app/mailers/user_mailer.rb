class UserMailer < ActionMailer::Base
  default from: "web.development@raush.ir"
  
  def send_user_mail
    p '11111111111111111111111111111111111111111111111111'
    mail(to: User.all.collect(&:email).join(','), subject: 'mail subject')
    p '21111111111111111111111111111111111111111111111111'
  end
end
