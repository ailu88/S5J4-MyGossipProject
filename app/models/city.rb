class City < ApplicationRecord
    has_many :users
    validates :name, presence: true
    validates :zip_code, length: { minimum: 3 }
end
