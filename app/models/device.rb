class Device < ActiveRecord::Base
  attr_accessible :name, :latestPosition_id, :uniqueId
end
