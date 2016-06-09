class AssignedSet < ActiveRecord::Base
  belongs_to :training_set
  belongs_to :athlete
end
