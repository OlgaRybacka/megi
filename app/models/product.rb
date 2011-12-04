class Product < ActiveRecord::Base
	mount_uploader :photo, ProductUploader
	mount_uploader :photo_small, ProductSmallUploader
	
end
