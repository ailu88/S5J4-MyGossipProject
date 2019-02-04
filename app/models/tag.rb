class Tag < ApplicationRecord
    validates :title, presence: true
    has_many :tag_gossips
    has_many :gossips, through: :tag_gossips
end
