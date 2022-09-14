class Owner < ActiveRecord::Base
  has_many :todos
end