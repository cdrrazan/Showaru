class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :account
  has_many :teams
  has_many :workspaces
  has_many :sites, through: :workspaces
  has_many :links, through: :workspaces
end
