class Site < ActiveRecord::Base
  has_many :users, through: :user_sites
  has_many :user_sites
end