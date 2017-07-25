class Autor < ApplicationRecord
	validates :nombre, presence: true
	validates :apellido, presence: true
end