# def tell_browser_type(browser)
#   if(browser.type == "Safari")
#     puts "You are using the Safari browser."
#   else
#     puts "You are using a non-Safari browser."
#   end
# end

def tell_browser_type(browser)
  browser_name = (browser.type == "Safari") ? "Safari" : "non-Safari"
  puts "You are using #{browser_name} browser."
end
