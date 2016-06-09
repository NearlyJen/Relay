class Athlete < ActiveRecord::Base
  has_many :athlete_intervals
  has_many :event_groups
  has_many :athlete_events

  validates :username, :email, :age, presence: true;
end
