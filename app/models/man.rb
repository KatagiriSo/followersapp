# -*- encoding: utf-8 -*-

class Man < ActiveRecord::Base

    has_many :messages, foreign_key: :user_id, class_name: "Message"

    # フォロー関係
    has_many :followRelations, foreign_key: :user_id, class_name: "Followrelation"
    has_many :follows, through: :followRelations

    #フォロワー関係
    has_many :followerRelations, foreign_key: :follow_id, class_name: "Followrelation"
    has_many :followers, through: :followerRelations

end
