class Teacher < ApplicationRecord
    has_many :comments #one article can contain many comm
    validates :name, presence: true, length: {minimum: 3} # automatic validation call!!!))
end
