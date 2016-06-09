class Session < ActiveRecord::Base
  has_many :training_sets
  belongs_to :event_group

  validates :name, presence: true
end
