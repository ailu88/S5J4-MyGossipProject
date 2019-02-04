class Comment < ApplicationRecord
    validates :content, presence: true

    belongs_to :user
    belongs_to :gossip
    has_many :likes
end
