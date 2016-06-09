class Interval < ActiveRecord::Base
  has_many :athlete_intervals
  belongs_to :set

  validates :distance, :intensity, :length_of_interval, presence: true
end
