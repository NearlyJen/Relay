class AthleteInterval < ActiveRecord::Base
  belongs_to :interval
  belongs_to :athlete

  validates :athlete_time, presence: true
end
