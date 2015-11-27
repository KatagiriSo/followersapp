class Message < ActiveRecord::Base
    belongs_to :message, class_name: "Man", foreign_key: :user_id    
end
