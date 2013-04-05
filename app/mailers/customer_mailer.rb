class CustomerMailer < ActionMailer::Base
   def contact_logan(customer)
      @customer = customer
      mail(:to => "hayduke19us@gmail.com", :subject => "Logan Construction Customer", :from => customer.email)
   end
   
end
