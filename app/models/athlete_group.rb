class AthleteGroup < ActiveRecord::Base
  belongs_to :athlete
  belongs_to :event_group
end
