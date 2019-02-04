class Gossip < ApplicationRecord
    validates :title, presence: true
    validates :content, presence: true

    belongs_to :user
    has_many :likes
    has_many :tag_gossips
    has_many :comments
    has_many :tags, through: :tag_gossips
end
