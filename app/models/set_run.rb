class SetRun < ApplicationRecord
  belongs_to :lego_set
  belongs_to :category
  belongs_to :user

  validates_presence_of :lego_set_id, :category_id, :user_id
  validates_date :run_date, on_or_before: -> {Date.current}
end
