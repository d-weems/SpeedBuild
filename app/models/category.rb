class Category < ApplicationRecord
  has_many :set_runs

  validates_presence_of :name, :description
  validates_uniqueness_of :name
end
