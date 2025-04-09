class Site < ApplicationRecord
  belongs_to :workspace
  has_one :site_setting
end
