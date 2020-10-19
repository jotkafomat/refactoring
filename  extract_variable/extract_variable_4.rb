# class Mail
#   def initialize(email, fancy = false)
#     @email = email
#     @fancy = fancy
#   end
#
#   def send_message
#     if fancy
#       MailServer.connect("http://mixmax.com", api_key: "f20506xx808c").send_message({ to: @email, body: "Welcome to MyProduct, fancy person!" })
#     else
#       MailServer.connect("http://mixmax.com", api_key: "f20506xx808c").send_message({ to: @email, body: "Welcome to MyProduct" })
#     end
#   end
# end

class Mail
  def initialize(email, fancy = false)
    @email = email
    @fancy = fancy
  end

  def send_message

    mail_server = MailServer.connect("http://mixmax.com", api_key: "f20506xx808c")
    body_fancy_style = "Welcome to MyProduct, fancy person!"
    body_normal_style = "Welcome to MyProduct"

    if @fancy
      mail_server.send_message({ to: @email, body: body_fancy_style })
    else
      mail_server.send_message({ to: @email, body: body_normal_style })
    end
  end
end
