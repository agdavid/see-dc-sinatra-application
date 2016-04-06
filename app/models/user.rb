class User < ActiveRecord::Base
  has_many :sites, through: :users_sites
  has_many :users_sites
  has_secure_password

  #def slug
    #self.username.downcase.gsub(" ","-")
  #end

  #def self.find_by_slug(slug)
    #self.all.find {|user| user.slug == slug}
  #end
end