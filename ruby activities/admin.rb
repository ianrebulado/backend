module AdminPermisson
    def edit_users_profile
      puts "Admin updated all users profile"
    end
  end
  
  module BuyerPermission
    def buy
      puts "Buyer has bought an item"
    end
  
  end
  
  class User
    def initialize(username, password, ip_address)
     @username = username
     @password = password
     @ip_address = ip_address
    end
  
    def change_password=(new_password)
     @password = new_password
     puts "Your new password is: #{@password}"
    end

    protected
    def login
      puts "User logged in. IP address: #@{ip_address}"
    end
  end
  
  
  class Admin < User
  include AdminPermisson
  def admin_login
    login
  end 
end


class Buyer < User
include BuyerPermission
    def buyer_login
      login
    end
  end
  
  