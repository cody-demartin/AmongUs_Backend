class Group < ApplicationRecord
    has_many :users
    belongs_to :creator, foreign_key: :creator_id, class_name: 'User'
    validate :validates_user_count

    def validates_user_count
        if self.users.all > 9 
            errors.add(:users, "Room is full.")
        end
    end 
end

