# def send_correct_page(browser, window)
#   browser_type_is_safari = browser.type == "Safari"
#   window_size_is_small = window.size < "768px"
#
#   safari_small_message = "You are using the Safari browser in a small window."
#   not_safari_or_big_message = "You are not using the Safari browser or have a big window."
#
#   browser_type_is_safari && window_size_is_small ? safari_small_message : not_safari_or_big_message
# end

def send_correct_page(browser, window)

  safari_small_message = "You are using the Safari browser in a small window."
  not_safari_or_big_message = "You are not using the Safari browser or have a big window."

  browser_type_is_safari && window_size_is_small ? safari_small_message : not_safari_or_big_message
end

def browser_type_is_safari?(browser)
  browser.type == "Safari"
end

def window_size_is_small?(window)
  window.size < "768px"
end
