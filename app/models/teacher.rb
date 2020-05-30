class Teacher < ApplicationRecord
    validates :name, presence: true, length: {minimum: 3} # automatic validation call!!!))
end
