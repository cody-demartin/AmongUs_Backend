class User < ApplicationRecord
    belongs_to :group
    has_secure_password
    
end
