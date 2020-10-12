# def send_correct_page(browser, window)
#   if(browser.type == "Safari" && window.size < "768px")
#     return "You are using the Safari browser in a small window."
#   else
#     return "You are not using the Safari browser or have a big window."
#   end
# end

def send_correct_page(browser, window)

  correct_page = "Safari" && window.size < "768px"

  if(browser.type == correct_page)
    return "You are using the Safari browser in a small window."
  else
    return "You are not using the Safari browser or have a big window."
  end
end
