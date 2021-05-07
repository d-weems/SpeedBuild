class SetRun < ApplicationRecord
  belongs_to :lego_set_id
  belongs_to :category_id
  belongs_to :user_id
end
