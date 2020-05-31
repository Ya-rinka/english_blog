class Teacher < ApplicationRecord
    has_many :comments, dependent: :delete_all #one article can contain many comm
    validates :name, presence: true, length: {minimum: 3} # automatic validation call!!!))
end
