require 'carrierwave/orm/activerecord'
class Proyect < ActiveRecord::Base
	mount_uploader :image, ImagenUploader
	mount_uploader :file, FileUploader
end
