# def send_email_to(user)
#   email = user.email.strip
#   mail  = Mail.new(email)
#
#   mail.send_message
# end

def send_email_to(user, mail)
  email(user)
  mail.send_message
end

def mail
  mail = Mail.new(email)
  mail
end

def email(user)
  email = user.email.strip
  email
end
