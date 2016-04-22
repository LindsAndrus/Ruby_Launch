class Network < ActiveRecord::Base
  belongs_to :profile
  has_many :users
  validates :profile_id, :user_id, :invitee_id, presence: true
end
