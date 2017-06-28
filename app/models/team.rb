class Team < ActiveRecord::Base
  scope :alpha, -> { order(city: :asc)}

  validates :name, :presence => true
end
