class Setting < ApplicationRecord
  belongs_to :link, optional: true
  belongs_to :account, optional: true
  belongs_to :team, optional: true
  belongs_to :workspace, optional: true
end
