class ProductPhoto < ActiveRecord::Base
	mount_uploader :photo, ProductUploader
	mount_uploader :photo_small, ProductSmallUploader
  belongs_to :product

  def to_s
    self.photo_small
  end
end
