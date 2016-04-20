class Secret < ActiveRecord::Base
  has_many :likes
  belongs_to :user
  has_many :users, through: :likes
  validates :secret, :user_id, presence: true
  validates :secret, length: {minimum: 5}
end
