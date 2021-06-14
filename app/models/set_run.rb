class SetRun < ApplicationRecord
  belongs_to :lego_set
  belongs_to :category
  belongs_to :user

  scope :by_time, -> {order("milliseconds ASC")} 

  validates_presence_of :lego_set_id, :category_id, :user_id, :milliseconds, :run_date
  validates_date :run_date, on_or_before: -> {Date.current}
end
