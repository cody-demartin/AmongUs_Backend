class Group < ApplicationRecord
    belongs_to :creator, class_name: "User"
    has_many :members, through: :memberships, source: :user
    has_many :memberships
    validate :validates_user_count

    def validates_user_count
        if self.members.length > 9 
            errors.add(:users, "Room is full.")
        end
    end 
end

