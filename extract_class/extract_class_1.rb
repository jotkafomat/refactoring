# Understands sanitising a user's email and sending them an email
# class UserContacter
#   def send_email_to(user)
#     mail = Mail.new(sanitised_email_for(user))
#
#     mail.send_message
#   end
#
#   private
#
#   def sanitised_email_for(user)
#     email.strip
#   end
# end



class UserContacter
 def send_email_to(user)
   mail = Mail.new(user.sanitised_email)

   mail.send_message
 end

end


class User
  attr_reader :email

  def initialize(email)
    @email = email
  end

  def sanitised_email
    @email.strip
  end
end


class Mail

  def send_message

  end

end
