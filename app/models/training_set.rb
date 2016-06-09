class TrainingSet < ActiveRecord::Base
  has_many :intervals
  belongs_to :session

  validates :name, :training_type, presence: true
end
