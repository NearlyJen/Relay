class EventGroup < ActiveRecord::Base
  has_many :sessions
  has_many :events
  has_many :athlete_groups
  has_many :athletes, through: :athlete_groups

  validates :name, presence: true
end
