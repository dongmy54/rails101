class Group < ApplicationRecord
  belongs_to :user
    has_many :posts
  validates :title, presence: 

  has_many :group_relationships
  has_many :members, through: :group_relationships, source: :user
end
