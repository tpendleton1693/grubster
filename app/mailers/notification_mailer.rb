class NotificationMailer < ActionMailer::Base
  default from: "no-reply@grubster.com"

  def comment_added
    mail(to: 'tyler.maxwell.pendleton@gmail.com',
        subject: 'A comment has been added to your place')
  end
end
