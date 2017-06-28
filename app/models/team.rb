class Team < ActiveRecord::Base
  scope :alpha, -> { order(name: :asc)}



  validates :name, :presence => true
end
