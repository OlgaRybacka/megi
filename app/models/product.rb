class Product < ActiveRecord::Base
  has_many :photos, :class_name => "ProductPhoto"
  belongs_to :package
  def photo
    self.photos.first || ""
  end
end
