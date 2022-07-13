class User < ActiveRecord::Base
    has_many :matches
    has_many :profiles, through: :matches

    def all_matches
        self.matches.where(swipe_user: true, swipe_profile: true).collect do |match|
            match.profile
        end
    end
    def not_swiped
        not_seen = []
        Profile.all.each do |prof|
            self.matches.each do |match|
                if(match.profile_id != prof.id)
                    not_seen << prof
                end
            end
        end
        return not_seen.uniq
    end
end