class User < ActiveRecord::Base
  attr_accessible :address, :altitude, :latitude, :longitude
   class << self
     def instance_method_already_implemented?(method_name)
       return true if method_name == 'valid?'
       super
     end
   end

end
