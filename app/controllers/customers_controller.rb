class CustomersController < ApplicationController
  def contacts
    @customer = Customer.new
  end
  def create 
    @customer = Customer.new(params[:customer])
    if @customer.save
        CustomerMailer.contact_logan(@customer).deliver
        redirect_to root_url, notice: "<h3>Your e-mail was sent!</h3>" 
    end
  end
end

