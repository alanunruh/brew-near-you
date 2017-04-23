class NotificationMailer < ApplicationMailer
  default from: "no-reply@brewnearyou.com"
  
  def comment_added
    mail(to: "alan.unruh@gmail.com",
          subject: "A comment has been added to your place.")
  end
end
