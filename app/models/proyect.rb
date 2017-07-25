require 'carrierwave/orm/activerecord'
class Proyect < ActiveRecord::Base
	mount_uploader :image, ImagenUploader
	mount_uploader :file, FileUploader
	validates :title, :description, :file, presence: true
end
