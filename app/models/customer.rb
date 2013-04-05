class Customer < ActiveRecord::Base
  attr_accessible :description, :email, :name
  belongs_to :user
end
