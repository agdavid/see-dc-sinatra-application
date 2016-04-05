class User < ActiveRecord::Base
  has_many :sites, through: :user_sites
  has_many :user_sites
end