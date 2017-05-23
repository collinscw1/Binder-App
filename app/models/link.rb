class Link < ApplicationRecord
	belongs_to :page
	has_many :taggings
	has_many :tags, through :taggings
end
