# # Understands detecting the browser type, detecting the browser width, and giving the user the correct page
# class BrowserPageChooser
#   def send_correct_page(browser, window)
#     safari_small_message = "You are using the Safari browser in a small window."
#     not_safari_or_big_message = "You are not using the Safari browser or have a big window."
#
#     safari?(browser) && small?(window) ? safari_small_message : not_safari_or_big_message
#   end
#
#   private
#
#   def safari?(browser)
#     browser.type == "Safari"
#   end
#
#   def small?(window)
#     window.size < "768px"
#   end
# end

class BrowserPageChooser
  def send_correct_page(browser, window)
    safari_small_message = "You are using the Safari browser in a small window."
    not_safari_or_big_message = "You are not using the Safari browser or have a big window."

    browser.safari? && window.small? ? safari_small_message : not_safari_or_big_message
  end

end


class Browser
  attr_reader :type

  def initialize(type)
    @type = type
  end

  def safari?
    type == "Safari"
  end
end

class Window

  attr_reader :size

  def initialize(size)
    @size = size
  end

  def small?
    size < "768px"
  end
end
