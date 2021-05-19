class Movie < ApplicationRecord

  has_many :actors

  validates :year, length: { maximum: 4 }, numericality: true
  validates :plot, length: { maximum: 500}
  validates :director, presence: true
  validates :title, presence: true

end
