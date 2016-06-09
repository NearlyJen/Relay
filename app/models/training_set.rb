class TrainingSet < ActiveRecord::Base
  has_many :intervals
  belongs_to :session

  has_many :assigned_sets
  has_many :athletes, through: :assigned_sets

  validates :name, :training_type, presence: true
end
