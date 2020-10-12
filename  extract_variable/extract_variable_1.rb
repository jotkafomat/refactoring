# def send_email_to(user)
#   Mail.new(user.email.strip).send_message
# end

def send_email_to(user)
  email = Mail.new(user.email.strip)
  email.send_message
end
