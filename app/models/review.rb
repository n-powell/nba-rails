class Review < ActiveRecord::Base
  belongs_to :team

  validates :comment, :rating, :presence => true


end
