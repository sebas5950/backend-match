class User < ActiveRecord::Base
    has_many :matches
    has_many :profiles, through: :matches

    def all_matches
        self.matches.where(swipe_user: true, swipe_profile: true).collect do |match|
            match.profile
        end
    end
    def potential_matches
       self.matches.where(swipe_user: nil).collect do |match|
            match.profile
        end
    end
    def not_swiped
        self.potential_matches.collect do |pot|
            Profile.where(id: pot.id)[0]
        end
    end
end