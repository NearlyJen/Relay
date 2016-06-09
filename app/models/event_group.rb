class EventGroup < ActiveRecord::Base
  has_many :sessions
  has_many :events
  has_many :athletes

  validates :name, presence: true
end
