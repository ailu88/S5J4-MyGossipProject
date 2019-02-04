class Gossip < ApplicationRecord
    belongs_to :user
    has_many :likes
    has_many :tag_gossips
    has_many :tags, through: :tag_gossips
end
