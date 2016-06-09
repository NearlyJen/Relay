class Athlete < ActiveRecord::Base
  has_many :athlete_intervals
  has_many :intervals, through: :athlete_intervals
  has_many :training_sets, through: :intervals

  has_many :athlete_groups
  has_many :event_groups, through: :athlete_groups

  has_many :athlete_events
  has_many :events, through: :athlete_events

  validates :username, :email, :age, presence: true;
end
