class Event < ActiveRecord::Base
  belongs_to :event_group
  has_many :athlete_events

  validates :name, presence: true
end
