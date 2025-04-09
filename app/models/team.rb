class Team < ApplicationRecord
  belongs_to :user
  has_many :workspaces
  has_many :sites, through: :workspaces
  has_many :links
end
