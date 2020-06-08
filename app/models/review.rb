class Review < ApplicationRecord
  validates :author, presence: true
  validates :content, presence: true
  validates_length_of :content, minimum: 50, maximum: 250
  validates :city, presence: true
  validates :country, presence: true
end