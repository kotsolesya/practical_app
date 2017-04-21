class Item < ActiveRecord::Base
  attr_accessible :done, :name

  default_scope { order("priority ASC") }
end
