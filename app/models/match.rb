class Match < ActiveRecord::Base
    belongs_to :user
    belongs_to :profile

    def self.check_match user_id, profile_id
        Match.find_or_create_by(user_id: user_id, profile_id: profile_id)
    end
    
end