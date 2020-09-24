class User < ApplicationRecord
    belongs_to :group
    has_secure_password
    validates :username, uniqueness: { case_sensitive: false}
end
