class Annonce < ActiveRecord::Base
	validates :title, presence: true
	validates :body, presence: true
	validates :price, presence: true
	validates :creator_id, presence: true
end
