class Profile < ActiveRecord::Base
  has_many :networks
  has_many :invitations
  validates :user_id, presence: true
end
