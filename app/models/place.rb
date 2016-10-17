class Place < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :photos
  geocoded_by :address
  after_validation :geocode
  validates :name, presence: true, length: {minimum: 4}, uniqueness: {case_sensitive: false}
  validates :address, presence: true
  validates :description, presence: true
end
