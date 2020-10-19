# def send_email_to(user)
#   email = user.email.strip
#   mail  = Mail.new(email)
#
#   mail.send_message
# end

def send_email_to(user)
  mail = mail(user)
  mail.send_message
end

private
def mail(user)
  email = email(user)
  Mail.new(email)
end

def email(user)
  user.email.strip
end
