class Position < ActiveRecord::Base
  attr_accessible :address, :altitude, :latitude, :longitude, :valid, 
  :time, :other, :speed, :power, :device_id, :course

   class << self
     def instance_method_already_implemented?(method_name)
       return true if method_name == 'valid?'
       super
     end
   end

acts_as_gmappable

def gmaps4rails_address
#describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
  "#{self.address}" 
end

end
