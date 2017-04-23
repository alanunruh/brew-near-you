class NotificationMailer < ApplicationMailer
  default from: "no-reply@brewnearyou.com"
  
  def comment_added(comment)
    @place = comment.place
    @place_user = @place.user
    mail(to: @place_user.email,
          subject: "A comment has been added to #{@place.name}.")
  end
end
