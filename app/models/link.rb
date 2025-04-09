class Link < ApplicationRecord
  belongs_to :workspace
  has_one :setting
end
