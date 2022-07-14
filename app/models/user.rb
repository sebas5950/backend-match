class User < ActiveRecord::Base
    has_many :matches
    has_many :profiles, through: :matches

    def all_matches
        self.matches.where(swipe_user: true, swipe_profile: true).collect do |match|
            match.profile
        end
    end
    # def potential_matches
    #    self.matches.where(swipe_user: nil).collect do |match|
    #         match.profile
    #     end
    # end
    def not_matches
        arrA = []
        self.matches.where(swipe_user: true).collect do |match|
            arrA << match.profile
        end
        arrB = [] 
        self.matches.where(swipe_user: false).collect do |match|
            arrB << match.profile
        end
        arrC = arrA.concat(arrB)
        arrC
    end
    def not_swiped
        # toSend = self.potential_matches.collect do |pot|
        #     Profile.where(id: pot.id)[0]
        # end
        # (self.not_matches)
        test = []
        Profile.all.each do |x|
            test << x
        end
        moreTest = test.difference(self.not_matches)
        moreTest
    end
end