class User < ActiveRecord::Base
    
    has_many :finstagramPosts
    has_many :comments
    has_many :likes
    
    validates :email, :username, uniqueness: true
    validates :email, :avatar_url, :username, :password, presence: true
    
end