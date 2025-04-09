class SiteSetting < ApplicationRecord
  belongs_to :site
  has_one :launch_setting
end
