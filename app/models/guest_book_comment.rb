class GuestBookComment < ActiveRecord::Base
  attr_accessible :title, :name, :comment
end
