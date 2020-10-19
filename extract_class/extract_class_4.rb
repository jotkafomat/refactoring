# class Mail
#   def initialize(email, fancy = false)
#     @email = email
#     @fancy = fancy
#   end
#
#   def send_message
#     mail_server = MailServer.connect("http://mixmax.com", api_key: "f20506xx808c")
#     mail_server.send_message({ to: @email, body: body })
#   end
#
#   private
#
#   def body
#     base_body = "Welcome to MyProduct"
#     @fancy ? "#{ base_body }, fancy person!" : base_body
#   end
# end
# Understands connecting to a mail server and sending a fancy or non-fancy message to the user

class Mail
  def initialize(email, fancy = false)
    @email = email
    @fancy = fancy
  end

  def send_message(mail_server)
    mail_server.send_message({ to: @email, body: body })
  end

  private

  def body
    "#{ Body.new(fancy) }"
  end

  class Body
    def initialize(fancy)
      @fancy = fancy
    end

    def to_s
      base_body = "Welcome to MyProduct"
      @fancy ? "#{ base_body }, fancy person!" : base_body
    end

  end

end

class MailServer

   def self.connect(adrress, api_key:)
     MailServer.new(adrress, api_key:)
   end

   def send_message({ to: email, body: body })

   end

end
