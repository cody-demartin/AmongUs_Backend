class User < ApplicationRecord
    has_one :owned_group, foreign_key: "creator_id", class_name: "Group"
    has_many :memberships
    has_many :groups, through: :memberships
    has_secure_password
    
    validates :username, uniqueness: true, length: { maximum: 10 }
end
