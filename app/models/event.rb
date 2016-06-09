class Event < ActiveRecord::Base
  belongs_to :event_group
  has_many :athlete_events
  has_many :athletes, through: :athlete_events

  validates :name, presence: true
end
