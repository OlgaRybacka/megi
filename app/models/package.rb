class Package < ActiveRecord::Base
  has_many :products
end
