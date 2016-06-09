class Interval < ActiveRecord::Base
  has_many :athlete_intervals
  belongs_to :training_set

  validates :distance, :intensity, :interval_time , presence: true
end
