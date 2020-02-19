class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  CATEGORIES = %w[chinese italian japanese french belgian].freeze
  validates :name, presence: true
  validates :address, uniqueness: true, presence: true
  validates :category, inclusion: { in: CATEGORIES }
end
