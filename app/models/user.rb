class User < ApplicationRecord
    has_many :notes

    has_secure_password
    validates :username, presence: true, uniqueness: {case_sensitive: false}

end
