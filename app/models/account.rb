class Account < ApplicationRecord
  belongs_to :user
  has_one :subscription
  has_one :setting
end
