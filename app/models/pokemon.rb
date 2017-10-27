class Pokemon < ApplicationRecord
	belongs_to :trainer, optional: true
	validates :name, uniqueness: { case_sensitive: false }
	validates :name, presence: true
end
