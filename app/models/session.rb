class Session < ActiveRecord::Base
  has_many :sessions
  belongs_to :event_group

  validates :name, presence: true
end
