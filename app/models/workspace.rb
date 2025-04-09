class Workspace < ApplicationRecord
  belongs_to :user
  belongs_to :team, optional: true
  has_one :setting
  has_one :dashboard
  has_many :sites
  has_many :links
end
