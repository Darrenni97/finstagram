class FinstagramPost < ActiveRecord::Base
    
    belongs_to :user
    has_many :comments
    has_many :likes
    
    validates :photo_url, :user, presence: true
    
    def humanizedTimeAgo
        timeAgoInSeconds = Time.now - self.created_at
        timeAgoInMinutes = timeAgoInSeconds / 60
        timeAgoInHours = timeAgoInMinutes / 60
        
        if timeAgoInHours >= 24
            "#{(timeAgoInHours / 24).to_i} days ago"
        elsif timeAgoInHours < 24
            "#{timeAgoInHours.to_i} hours ago"
        else
            "#{timeAgoInMinutes.to_i} minutes ago"
        end
    end
    
    def likeCount
        self.likes.size
    end
    
    def commentCount
        self.likes.size
    end
    
end