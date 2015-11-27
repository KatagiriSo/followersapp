class Followrelation < ActiveRecord::Base
    
    belongs_to :follow, class_name: "Man", foreign_key: "follow_id"
    belongs_to :follower, class_name: "Man", foreign_key: "user_id"
    
end
