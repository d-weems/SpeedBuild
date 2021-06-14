class LegoSet < ApplicationRecord
  has_many :set_runs

  scope :alphabetical, -> {order('name')}
  scope :by_pieces, -> {order('piece_count DESC')}

  validates_presence_of :set_number, :name, :piece_count
  validates_uniqueness_of :set_number
end
