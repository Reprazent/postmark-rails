# Add a postmark response attribute to the mail object
# For Rails2 this is added in the PostMarkDeliveryMethod module
# For Rails3 another solution will be needed, perhaps add a new delivery 
# method that uses "send_through_postmark" defined in the Postmark gem
module PostmarkResponseExtension
  if defined?(TMail)
    MESSAGE_CLASS = TMail::Mail
  elsif defined?(Mail)
    MESSAGE_CLASS = Mail::Message
  end

  class MESSAGE_CLASS
    attr_accessor :postmark_response
  end
end