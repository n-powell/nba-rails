class Team < ActiveRecord::Base
  scope :alpha, -> { order(wins: :asc)}

  has_many :reviews

  validates :name, :presence => true
end
